import { Request, Response, NextFunction } from "express";
import { verify } from "jsonwebtoken";

interface IPayload {
  sub: string;
}

export function ensureAuthenticated(request: Request, response: Response, next: NextFunction) {

  // Receber o token
  const authtoken = request.headers.authorization;

  // Validar se o token está preenchido
  if (!authtoken) {
    return response.status(401).end();
  }

  const [, token] = authtoken.split(" ");

  try {
    // Verificar se o token é válido
    const { sub } = verify(
      token,
      "019cb62eafdeb0bd6415c038674d516c"
    ) as IPayload;

    // Recuperar informações do usuário
    request.user_id = sub;

    return next();
  } catch (err) {
    return response.status(401).end();
  }

}