defmodule ConsoleWeb.EventView do
  use ConsoleWeb, :view
  alias ConsoleWeb.EventView
  alias ConsoleWeb.DeviceView
  alias ConsoleWeb.GatewayView
  alias ConsoleWeb.ChannelView

  def render("index.json", %{events: events}) do
    render_many(events, EventView, "event.json")
  end

  def render("show.json", %{event: event}) do
    render_one(event, EventView, "event.json")
  end

  def render("event.json", %{event: event}) do
    %{
      id: event.id,
      description: event.description,
      category: event.category,
      sub_category: event.sub_category,
      reported_at: event.reported_at,
      data: event.data,
      frame_up: event.frame_up,
      frame_down: event.frame_down,
      organization_id: event.organization_id,
      router_uuid: event.router_uuid
    }
  end

  defp append_device(json, device) do
    if Ecto.assoc_loaded?(device) do
      device_json = render_one(device, DeviceView, "device.json")
      Map.put(json, :device, device_json)
    else
      json
    end
  end

  defp append_gateway(json, gateway) do
    if Ecto.assoc_loaded?(gateway) do
      gateway_json = render_one(gateway, GatewayView, "gateway.json")
      Map.put(json, :gateway, gateway_json)
    else
      json
    end
  end

  defp append_channel(json, channel) do
    if Ecto.assoc_loaded?(channel) do
      channel_json = render_one(channel, ChannelView, "channel.json")
      Map.put(json, :channel, channel_json)
    else
      json
    end
  end
end
