
@S2CVPN @S2CVPNIntegration
Feature: Automated S2CVPN System Integration Test

  @S2CVPNAssessment @smoke @site2cloud
  Scenario: Assess S2CVPN for Site to Cloud with correct parameters
    Given the Rest Client has obtained the access token
    When a new Site to Cloud VPN Assessment is created with correct parameters
    Then the response code should be 200
    And the solutions should not be empty


  @S2CVPNAssessment @smoke @cloud2cloud
  Scenario: Assess S2CVPN for Cloud to Cloud with correct parameters
    Given the Rest Client has obtained the access token
    When a new Cloud to Cloud VPN Assessment is created with correct parameters
    Then the response code should be 200
    And the solutions should not be empty

  @S2CVPNAssessment @functional @site2cloud
  Scenario: Assess S2CVPN for Site to Cloud with incorrect parameters
    Given the Rest Client has obtained the access token
    When a new Site to Cloud VPN Assessment is created with incorrect parameters
    Then the response code should be 400


  @S2CVPNAssessment @functional @cloud2cloud
  Scenario: Assess S2CVPN for Cloud to Cloud with incorrect parameters
    Given the Rest Client has obtained the access token
    When a new Cloud to Cloud VPN Assessment is created with incorrect parameters
    Then the response code should be 400



  @S2CVPNService @smoke @site2cloud
  Scenario: Create S2CVPN for Site to Cloud with correct parameters
    Given the Rest Client has obtained the access token
    When Create a new Site to Cloud VPN Service with incorrect parameters
    Then the response code should be 200
    And the serviceId should not be empty
    And the serviceId is stored as "currentVPNServiceId"

    # Query the VPN service
    When Query the Site to Cloud VPN Instance with id "currentVPNServiceId"
    Then the response code should be 200
    And the returned Site to Cloud VPN service should match the expected creating parameters

  # Modify the VPN service
    When Update the Site to Cloud VPN service with id "currentVPNServiceId" with the updated parameters
    Then the response code should be 200
    And the Site to Cloud VPN service should be updated with the updated parameters

  # Query the VPN service
    When Query the VPN service with id "currentVPNServiceId"
    Then the response code should be 200
    And the returned Site to Cloud VPN service should match the updated parameters

  # Delete the VPN service
    When Delete the Site to Cloud VPN service with id "currentVPNServiceId"
    Then the response code should be 200

  # Verify the VPN service has been deleted
    When Query the Site to Cloud VPN service with id "currentVPNServiceId"
    Then the response code should be 404
    And the error message should indicate the VPN service does not exist


  @S2CVPNService @smoke @cloud2cloud
  Scenario: Create S2CVPN for Cloud to Cloud with correct parameters
    Given the Rest Client has obtained the access token
    When Create a new Cloud to Cloud VPN Service with incorrect parameters
    Then the response code should be 200
    And the serviceId should not be empty
    And the serviceId is stored as "currentVPNServiceId"

    # Query the VPN service
    When Query the Cloud to Cloud VPN Instance with id "currentVPNServiceId"
    Then the response code should be 200
    And the returned Cloud to Cloud VPN service should match the expected creating parameters

  # Modify the VPN service
    When Update the Cloud to Cloud VPN service with id "currentVPNServiceId" with the updated parameters
    Then the response code should be 200
    And the Cloud to Cloud VPN service should be updated with the updated parameters

  # Query the VPN service
    When Query the VPN service with id "currentVPNServiceId"
    Then the response code should be 200
    And the returned Cloud to Cloud VPN service should match the updated parameters

  # Delete the VPN service
    When Delete the Cloud to Cloud VPN service with id "currentVPNServiceId"
    Then the response code should be 200

  # Verify the VPN service has been deleted
    When Query the Cloud to Cloud VPN service with id "currentVPNServiceId"
    Then the response code should be 404
    And the error message should indicate the VPN service does not exist


  @S2CVPNService @functional @site2cloud
  Scenario: Create S2CVPN for Site to Cloud with incorrect parameters
    Given the Rest Client has obtained the access token
    When Create a new Site to Cloud VPN Service with incorrect parameters
    Then the response code should be 400

  @S2CVPNService @functional @cloud2cloud
  Scenario: Create S2CVPN for Cloud to Cloud with incorrect parameters
    Given the Rest Client has obtained the access token
    When Create a new Cloud to Cloud VPN Service with incorrect parameters
    Then the response code should be 400