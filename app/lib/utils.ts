import getSession from "./session";

export const LogIn = async (id: number) => {
  const session = await getSession();
  session.id = id;
  await session.save();
};
