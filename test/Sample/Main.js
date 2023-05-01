export const elemById = (id) => {
  const elem = document.getElementById(id);
  if (!elem) throw new Error(`Element with id ${id} not found`);

  return elem;
};

export const htmlElemById = (id) => {
  const elem = document.getElementById(id);
  if (!elem) throw new Error(`Element with id ${id} not found`);

  return elem;
};
