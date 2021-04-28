import React from 'react'
import ReactDom from 'react-dom'

import BoaTarde, { BoaNoite } from './import&Export'

import Comprimento from './import&Export'

ReactDOM.render(
  
  <section>
    <BoaTarde nome="Anna" />
    <BoaNoite nome="Andre" />
    <Comprimento.BomDia nome="Suely" />
  </section>

, document.getElementById('root'))