require 'spec_helper'

describe 'sample integration test', type: :feature do
  # An example integration spec, this will only be run if ENV['BROWSER'] is
  # specified.  Current values for ENV['BROWSER'] are 'firefox' and 'phantom'

  xit 'should click the widget' do
    visit '/'

    find('.xdatetime').click
    find('.xtoday').click
    value = find('.xdatetime input').value
    
    today = Time.new.strftime('%d-%m-%Y')

    expect(value).to eq(today)
  end

  xit 'should page._datetime' do
    visit '/'
        
    #find('.xdatetime').click
    #find('.xtoday').click
    expect(Volt.current_app.page._datetime).to eq(Time.new)
  end

  it 'should minus month' do
    visit '/'

    find('.xdatetime').click
    find('.minus-month').click
    value = find('.xdatetime input').value
    
    past = Time.new 2020, 12, 1
    past = past.strftime('%d-%m-%Y %H:%M')

    expect(value).to eq(past)
  end

  it 'should plus month' do
    visit '/'

    find('.xdatetime').click
    find('.plus-month').click
    value = find('.xdatetime input').value
    
    future = Time.new 2021, 1, 31
    future = future.strftime('%d-%m-%Y %H:%M')

    expect(value).to eq(future)
  end

  it 'should minus year' do
    visit '/'

    find('.xdatetime').click
    find('.minus-year').click
    value = find('.xdatetime input').value
    
    past = Time.new 2019, 12, 31
    past = past.strftime('%d-%m-%Y %H:%M')

    expect(value).to eq(past)
  end

  it 'should plus year' do
    visit '/'

    find('.xdatetime').click
    find('.plus-year').click
    value = find('.xdatetime input').value
    
    future = Time.new 2021, 12, 31
    future = future.strftime('%d-%m-%Y %H:%M')

    expect(value).to eq(future)
  end

  it 'should minus minute' do
    visit '/'

    find('.xdatetime').click
    find('.minus-minute').click
    value = find('.xdatetime input').value
    
    future = Time.new 2020, 12, 30, 23, 59
    future = future.strftime('%d-%m-%Y %H:%M')

    expect(value).to eq(future)
  end

  it 'should minus hour' do
    visit '/'

    find('.xdatetime').click
    find('.minus-hour').click
    value = find('.xdatetime input').value
    
    future = Time.new 2020, 12, 30, 23, 00
    future = future.strftime('%d-%m-%Y %H:%M')

    expect(value).to eq(future)
  end

  it 'should plus minute' do
    visit '/'

    find('.xdatetime').click
    find('.plus-minute').click
    value = find('.xdatetime input').value
    
    future = Time.new 2020, 12, 31, 0, 1
    future = future.strftime('%d-%m-%Y %H:%M')

    expect(value).to eq(future)
  end

  it 'should plus hour' do
    visit '/'

    find('.xdatetime').click
    find('.plus-hour').click    
    value = find('.xdatetime input').value
    
    future = Time.new 2020, 12, 31, 1, 0
    future = future.strftime('%d-%m-%Y %H:%M')

    expect(value).to eq(future)
  end

end
