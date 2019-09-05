const express = require('express')
const app = express()

const PORT = process.env.PORT || 8888

const router = express.Router()

router.get('/status', (req, res) => res.json({ status: 'OK' }))

app.use(router)

app.listen(PORT, () => console.log(`api listening on port ${PORT}`))