import {sleep} from 'k6'
import http from 'k6/http'

export const options = {
    duration: '1m',
    vus: 50
}

export default function() {
    http.get('http://185.51.76.159:8092/api/fish/1')
    sleep(3)
}