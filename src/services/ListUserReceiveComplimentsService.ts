import { getCustomRepository } from "typeorm";
import { ComplementsRepositories } from "../repositories/ComplimentsRepositories";

class ListUserReceiveComplimentsService {

  async execute(user_id: string) {
    const complimentsRepositories = getCustomRepository(ComplementsRepositories);

    const compliments = await complimentsRepositories.find({
      where: {
        user_receiver: user_id,
      },
      relations: ["userSender", "userReceiver", "tag"],
    });

    return compliments
  }
}

export { ListUserReceiveComplimentsService }