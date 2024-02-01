<?xml version="1.0" encoding="UTF-8"?>
<Workflow xmlns="http://soap.sforce.com/2006/04/metadata">
    <alerts>
        <fullName>send_bill_email</fullName>
        <description>send bill email</description>
        <protected>false</protected>
        <recipients>
            <recipient>person1@metazoa.com</recipient>
            <type>user</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>unfiled$public/LeadsNewassignmentnotificationSAMPLE</template>
    </alerts>
    <alerts>
        <fullName>send_email_to_bill</fullName>
        <description>send email to bill</description>
        <protected>false</protected>
        <recipients>
            <recipient>person1@metazoa.com</recipient>
            <type>user</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>unfiled$public/LeadsNewassignmentnotificationSAMPLE</template>
    </alerts>
    <rules>
        <fullName>test_rule_one</fullName>
        <actions>
            <name>send_bill_email</name>
            <type>Alert</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Contact.FirstName</field>
            <operation>equals</operation>
            <value>Bill</value>
        </criteriaItems>
        <description>send an email when the contact name is bill</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>test_rule_two</fullName>
        <active>true</active>
        <criteriaItems>
            <field>Contact.FirstName</field>
            <operation>equals</operation>
            <value>joe</value>
        </criteriaItems>
        <description>send an email after name is joe</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
        <workflowTimeTriggers>
            <actions>
                <name>new_task</name>
                <type>Task</type>
            </actions>
            <timeLength>0</timeLength>
            <workflowTimeTriggerUnit>Hours</workflowTimeTriggerUnit>
        </workflowTimeTriggers>
    </rules>
    <tasks>
        <fullName>new_task</fullName>
        <assignedTo>person1@metazoa.com</assignedTo>
        <assignedToType>user</assignedToType>
        <dueDateOffset>-1</dueDateOffset>
        <notifyAssignee>false</notifyAssignee>
        <priority>Normal</priority>
        <protected>false</protected>
        <status>Not Started</status>
        <subject>new task</subject>
    </tasks>
</Workflow>
