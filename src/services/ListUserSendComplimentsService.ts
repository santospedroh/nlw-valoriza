import { getCustomRepository } from "typeorm";
import { ComplementsRepositories } from "../repositories/ComplimentsRepositories";

class ListUserSendComplimentsService {

  async execute(user_id: string) {
    const complimentsRepositories = getCustomRepository(ComplementsRepositories);

    const compliments = await complimentsRepositories.find({
      where: {
        user_sender: user_id
      }
    })

    return compliments
  }
}

export { ListUserSendComplimentsService }