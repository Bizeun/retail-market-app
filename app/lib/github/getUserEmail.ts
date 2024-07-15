export default async function getUserEmail(access_token: string) {
  interface IUserEmailData {
    email: string;
    primary: boolean;
    verified: boolean;
  }
  const userEmailData: IUserEmailData[] = await (
    await fetch("https://api.github.com/user/emails", {
      headers: {
        Authorization: `Bearer ${access_token}`,
      },
      cache: "no-cache",
    })
  ).json();
  const email = userEmailData.filter(
    (email) => email.primary && email.verified
  )[0]?.email;
  return email;
}
