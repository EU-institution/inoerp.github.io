---
slug: oneapp-design-stack
title: Design Stack
authors:
  name: Nishit
  title: Design Stack For One App

tags: [Oracle, SAP, Design]
---

Though Oracle and SAP are the two biggest ERP system providers, the design, architect, data structure, and functionality provided by these two products vary significantly in several business processes. For example, SAP still uses a single segment chart of account structure, whereas the Oracle chart of account structure can be up to 7/8 segments and 30/40 characters in many organizations. Thus the entire accounting structure, journal creation, and financial reporting process are different. 

The organizational structure and hierarchy in both products are quite different. However, after the addition of the business unit concept in the Oracle cloud, the functionality of three important entities is becoming similar.
* Inventory Org in Oracle / Plant in SAP
* Business Unit in Oracle/Company Code in SAP
* Legal Entity in Oracle / Company in SAP 

Thus, the supply chain, planning, and manufacturing processes are becoming more similar. However, the process of APO is quite different from Planning Central / ASCP, and Oracle still doesn't support any planning process similar to DDMRP. The BOM structure is also quite different as Oracle uses two levels (Header and Line, no details) and doesn't have features similar to BOM Group.

Another area in which the two product's structure is very different is Item Master (or Material Master). The Supplier and Customer details are still maintained in 2/3 levels in both the products with a similar number of attributes. SAP doesn't mandate any Item Master Organization, and Item attributes can be maintained in the Plant/Storage Location level. Though Oracle allows maintaining few item Item attributes in the SubInventory level, it's not the same as maintaining a material master in the Storage Location level. The number of item attributes in SAP is almost four times that of Oracle (without considering any DFFs/EFFs), and that's because Oracle maintains certain processes and information (such as Cost Management data) differently. 

A document can track all physical and financial processes in SAP, and SAP maintains the relationship among all the documents. However, in Oracle, documents and transactions are different. The document access methods through REST/ODATA are also different: SAP allows to access header and line-level data independently (same in various other systems such as Microsoft Dynamics 365 Business Central). However, Oracle provides access to line and detailed documents through its parent document.

The  Subledger accounting & costing process in Oracle is more flexible and complicated than what SAP provides. On the other hand, the material movement (inventory transaction in Oracle ) process is much better and flexible in SAP compared to Oracle. The list of differences is quite long. As OneApp is designed to be a single app that can be used with any ERP system, we have considered SAP Hana S/4, Oracle EBS R12/ Cloud, Microsoft Dynamics features while designing OneApp. So if you are not an expert on these three systems,  some of the processes might look strange. But, as you spend more time, you will recognize why certain procedures are different from your familiar ERP system.OneApp provides the building blocks to configure a wide variety of forms, actions, reports, charts, workflows using REST APIs that can be used to map varied business processes across divergent systems.
