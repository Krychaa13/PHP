const input = document.querySelector('#powierzchnia');
const button = document.querySelector('#policz');

button.addEventListener('click', function() {
  const powierzchnia = parseFloat(input.value);

  const iloscPuszek = Math.ceil(powierzchnia / 4);

  const wynik = document.querySelector('#wynik');
  wynik.textContent = 'Liczba jednolitrowych puszek farby potrzebnych do pomalowania wynosi: ' + iloscPuszek;
});
