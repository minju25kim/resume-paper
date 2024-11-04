import './style.css'
import { buttonStyle } from "./style.css.ts";
import en from './resources/en.json'
import kr from './resources/kr.json'

console.log(kr.basics.name)

document.querySelector<HTMLDivElement>('#app')!.innerHTML =/* html */`
  <div>
    <h1>${en.basics.name}</h1>
    <button id="myButton" class="${buttonStyle}">Download PDF</button>
  </div>
`

