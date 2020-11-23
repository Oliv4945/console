import Azure from '../../img/azure-channel.svg'
import Aws from '../../img/aws-channel.svg'
import Google from '../../img/google-channel.svg'
import Mqtt from '../../img/mqtt-channel.svg'
import Http from '../../img/http-channel.svg'
import Cargo from '../../img/heliumcargo.svg'
import MyDevices from '../../img/mydevices.svg'
import Adafruit from '../../img/adafruitio.svg';

export const NEW_CHANNEL_TYPES = [
  { name: "HTTP", link: "/integrations/new/http", img: `${Http}` },
  { name: "MQTT", link: "/integrations/new/mqtt", img: `${Mqtt}` },
  { name: "AWS IoT Core", link: "/integrations/new/aws", img: `${Aws}`},
  // { name: "Azure IoT", link: "/integrations/new/azure", img: `${Azure}`, inactive: true },
  // { name: "Google IoT", link: "/integrations/new/google", img: `${Google}`, inactive: true },
]

export const PREMADE_CHANNEL_TYPES = [
  { name: "Helium Cargo", link: "/integrations/new/cargo", img: `${Cargo}` },
  { name: "myDevices Cayenne", link: "/integrations/new/mydevices", img: `${MyDevices}` },
  { name: "Adafruit IO", link: "/integrations/new/adafruit", img: `${Adafruit}` },
]