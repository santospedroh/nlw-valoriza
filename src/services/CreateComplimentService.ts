import { getCustomRepository } from "typeorm";
import { ComplementsRepositories } from "../repositories/ComplimentsRepositories";
import { UsersRepositories } from "../repositories/UsersRepositories";

interface IComplimentRequest {
    tag_id: string;
    user_sender: string;
    user_receiver: string;
    message: string;
}

class CreateComplimentService {
    async execute({ tag_id, user_sender, user_receiver, message }: IComplimentRequest) {
        const complimentRepositories = getCustomRepository(ComplementsRepositories);
        const userRepositories = getCustomRepository(UsersRepositories);

        if (user_sender === user_receiver) {
            throw new Error("Incorrect User Receiver");
        }

        const userReceiverExists = await userRepositories.findOne(user_receiver);

        if (!userReceiverExists) {
            throw new Error("User Receiver does exists!");
        }

        const compliment = complimentRepositories.create({
            tag_id,
            user_receiver,
            user_sender,
            message
        });

        await complimentRepositories.save(compliment);

        return compliment;

    }

}

export { CreateComplimentService };