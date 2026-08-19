.class Lcom/perm/kate/session/Session$82;
.super Lcom/perm/kate/session/Command;
.source "Session.java"


# instance fields
.field final synthetic this$0:Lcom/perm/kate/session/Session;

.field final synthetic val$age_from:Ljava/lang/Integer;

.field final synthetic val$age_to:Ljava/lang/Integer;

.field final synthetic val$birth_day:Ljava/lang/Integer;

.field final synthetic val$birth_month:Ljava/lang/Integer;

.field final synthetic val$birth_year:Ljava/lang/Integer;

.field final synthetic val$city:Ljava/lang/Integer;

.field final synthetic val$company:Ljava/lang/String;

.field final synthetic val$count:Ljava/lang/Long;

.field final synthetic val$country:Ljava/lang/Integer;

.field final synthetic val$fields:Ljava/lang/String;

.field final synthetic val$gid:Ljava/lang/Long;

.field final synthetic val$has_photo:Ljava/lang/Integer;

.field final synthetic val$hometown:Ljava/lang/String;

.field final synthetic val$offset:Ljava/lang/Long;

.field final synthetic val$online:Ljava/lang/Integer;

.field final synthetic val$position:Ljava/lang/String;

.field final synthetic val$q:Ljava/lang/String;

.field final synthetic val$religion:Ljava/lang/String;

.field final synthetic val$school:Ljava/lang/Integer;

.field final synthetic val$school_city:Ljava/lang/Integer;

.field final synthetic val$school_country:Ljava/lang/Integer;

.field final synthetic val$school_year:Ljava/lang/Integer;

.field final synthetic val$sex:Ljava/lang/Integer;

.field final synthetic val$sort:Ljava/lang/Integer;

.field final synthetic val$status:Ljava/lang/Integer;

.field final synthetic val$univer:J

.field final synthetic val$university:Ljava/lang/Integer;

.field final synthetic val$university_country:Ljava/lang/Integer;

.field final synthetic val$university_year:Ljava/lang/Integer;


# direct methods
.method constructor <init>(Lcom/perm/kate/session/Session;Lcom/perm/kate/session/Callback;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/Long;)V
    .locals 3

    move-object v0, p0

    move-object v1, p1

    .line 1033
    iput-object v1, v0, Lcom/perm/kate/session/Session$82;->this$0:Lcom/perm/kate/session/Session;

    move-object v1, p4

    iput-object v1, v0, Lcom/perm/kate/session/Session$82;->val$q:Ljava/lang/String;

    move-object v1, p5

    iput-object v1, v0, Lcom/perm/kate/session/Session$82;->val$fields:Ljava/lang/String;

    move-object v1, p6

    iput-object v1, v0, Lcom/perm/kate/session/Session$82;->val$count:Ljava/lang/Long;

    move-object v1, p7

    iput-object v1, v0, Lcom/perm/kate/session/Session$82;->val$offset:Ljava/lang/Long;

    move-object v1, p8

    iput-object v1, v0, Lcom/perm/kate/session/Session$82;->val$sort:Ljava/lang/Integer;

    move-object v1, p9

    iput-object v1, v0, Lcom/perm/kate/session/Session$82;->val$city:Ljava/lang/Integer;

    move-object v1, p10

    iput-object v1, v0, Lcom/perm/kate/session/Session$82;->val$country:Ljava/lang/Integer;

    move-object v1, p11

    iput-object v1, v0, Lcom/perm/kate/session/Session$82;->val$hometown:Ljava/lang/String;

    move-object v1, p12

    iput-object v1, v0, Lcom/perm/kate/session/Session$82;->val$university_country:Ljava/lang/Integer;

    move-object/from16 v1, p13

    iput-object v1, v0, Lcom/perm/kate/session/Session$82;->val$university:Ljava/lang/Integer;

    move-object/from16 v1, p14

    iput-object v1, v0, Lcom/perm/kate/session/Session$82;->val$university_year:Ljava/lang/Integer;

    move-object/from16 v1, p15

    iput-object v1, v0, Lcom/perm/kate/session/Session$82;->val$sex:Ljava/lang/Integer;

    move-object/from16 v1, p16

    iput-object v1, v0, Lcom/perm/kate/session/Session$82;->val$status:Ljava/lang/Integer;

    move-object/from16 v1, p17

    iput-object v1, v0, Lcom/perm/kate/session/Session$82;->val$age_from:Ljava/lang/Integer;

    move-object/from16 v1, p18

    iput-object v1, v0, Lcom/perm/kate/session/Session$82;->val$age_to:Ljava/lang/Integer;

    move-object/from16 v1, p19

    iput-object v1, v0, Lcom/perm/kate/session/Session$82;->val$birth_day:Ljava/lang/Integer;

    move-object/from16 v1, p20

    iput-object v1, v0, Lcom/perm/kate/session/Session$82;->val$birth_month:Ljava/lang/Integer;

    move-object/from16 v1, p21

    iput-object v1, v0, Lcom/perm/kate/session/Session$82;->val$birth_year:Ljava/lang/Integer;

    move-object/from16 v1, p22

    iput-object v1, v0, Lcom/perm/kate/session/Session$82;->val$online:Ljava/lang/Integer;

    move-object/from16 v1, p23

    iput-object v1, v0, Lcom/perm/kate/session/Session$82;->val$has_photo:Ljava/lang/Integer;

    move-object/from16 v1, p24

    iput-object v1, v0, Lcom/perm/kate/session/Session$82;->val$school_country:Ljava/lang/Integer;

    move-object/from16 v1, p25

    iput-object v1, v0, Lcom/perm/kate/session/Session$82;->val$school_city:Ljava/lang/Integer;

    move-object/from16 v1, p26

    iput-object v1, v0, Lcom/perm/kate/session/Session$82;->val$school:Ljava/lang/Integer;

    move-object/from16 v1, p27

    iput-object v1, v0, Lcom/perm/kate/session/Session$82;->val$school_year:Ljava/lang/Integer;

    move-object/from16 v1, p28

    iput-object v1, v0, Lcom/perm/kate/session/Session$82;->val$religion:Ljava/lang/String;

    move-object/from16 v1, p29

    iput-object v1, v0, Lcom/perm/kate/session/Session$82;->val$company:Ljava/lang/String;

    move-object/from16 v1, p30

    iput-object v1, v0, Lcom/perm/kate/session/Session$82;->val$position:Ljava/lang/String;

    move-wide/from16 v1, p31

    iput-wide v1, v0, Lcom/perm/kate/session/Session$82;->val$univer:J

    move-object/from16 v1, p33

    iput-object v1, v0, Lcom/perm/kate/session/Session$82;->val$gid:Ljava/lang/Long;

    move-object v1, p2

    move-object v2, p3

    invoke-direct {p0, p2, p3}, Lcom/perm/kate/session/Command;-><init>(Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 34

    move-object/from16 v0, p0

    .line 1036
    iget-object v1, v0, Lcom/perm/kate/session/Session$82;->this$0:Lcom/perm/kate/session/Session;

    iget-object v2, v1, Lcom/perm/kate/session/Session;->api:Lcom/perm/kate/api/Api;

    iget-object v3, v0, Lcom/perm/kate/session/Session$82;->val$q:Ljava/lang/String;

    iget-object v4, v0, Lcom/perm/kate/session/Session$82;->val$fields:Ljava/lang/String;

    iget-object v5, v0, Lcom/perm/kate/session/Session$82;->val$count:Ljava/lang/Long;

    iget-object v6, v0, Lcom/perm/kate/session/Session$82;->val$offset:Ljava/lang/Long;

    iget-object v7, v0, Lcom/perm/kate/session/Session$82;->val$sort:Ljava/lang/Integer;

    iget-object v8, v0, Lcom/perm/kate/session/Session$82;->val$city:Ljava/lang/Integer;

    iget-object v9, v0, Lcom/perm/kate/session/Session$82;->val$country:Ljava/lang/Integer;

    iget-object v10, v0, Lcom/perm/kate/session/Session$82;->val$hometown:Ljava/lang/String;

    iget-object v11, v0, Lcom/perm/kate/session/Session$82;->val$university_country:Ljava/lang/Integer;

    iget-object v12, v0, Lcom/perm/kate/session/Session$82;->val$university:Ljava/lang/Integer;

    iget-object v13, v0, Lcom/perm/kate/session/Session$82;->val$university_year:Ljava/lang/Integer;

    iget-object v14, v0, Lcom/perm/kate/session/Session$82;->val$sex:Ljava/lang/Integer;

    iget-object v15, v0, Lcom/perm/kate/session/Session$82;->val$status:Ljava/lang/Integer;

    iget-object v1, v0, Lcom/perm/kate/session/Session$82;->val$age_from:Ljava/lang/Integer;

    move-object/from16 v16, v1

    iget-object v1, v0, Lcom/perm/kate/session/Session$82;->val$age_to:Ljava/lang/Integer;

    move-object/from16 v17, v1

    iget-object v1, v0, Lcom/perm/kate/session/Session$82;->val$birth_day:Ljava/lang/Integer;

    move-object/from16 v18, v1

    iget-object v1, v0, Lcom/perm/kate/session/Session$82;->val$birth_month:Ljava/lang/Integer;

    move-object/from16 v19, v1

    iget-object v1, v0, Lcom/perm/kate/session/Session$82;->val$birth_year:Ljava/lang/Integer;

    move-object/from16 v20, v1

    iget-object v1, v0, Lcom/perm/kate/session/Session$82;->val$online:Ljava/lang/Integer;

    move-object/from16 v21, v1

    iget-object v1, v0, Lcom/perm/kate/session/Session$82;->val$has_photo:Ljava/lang/Integer;

    move-object/from16 v22, v1

    iget-object v1, v0, Lcom/perm/kate/session/Session$82;->val$school_country:Ljava/lang/Integer;

    move-object/from16 v23, v1

    iget-object v1, v0, Lcom/perm/kate/session/Session$82;->val$school_city:Ljava/lang/Integer;

    move-object/from16 v24, v1

    iget-object v1, v0, Lcom/perm/kate/session/Session$82;->val$school:Ljava/lang/Integer;

    move-object/from16 v25, v1

    iget-object v1, v0, Lcom/perm/kate/session/Session$82;->val$school_year:Ljava/lang/Integer;

    move-object/from16 v26, v1

    iget-object v1, v0, Lcom/perm/kate/session/Session$82;->val$religion:Ljava/lang/String;

    move-object/from16 v27, v1

    iget-object v1, v0, Lcom/perm/kate/session/Session$82;->val$company:Ljava/lang/String;

    move-object/from16 v28, v1

    iget-object v1, v0, Lcom/perm/kate/session/Session$82;->val$position:Ljava/lang/String;

    move-object/from16 v29, v1

    move-object/from16 v33, v2

    iget-wide v1, v0, Lcom/perm/kate/session/Session$82;->val$univer:J

    move-wide/from16 v30, v1

    iget-object v1, v0, Lcom/perm/kate/session/Session$82;->val$gid:Ljava/lang/Long;

    move-object/from16 v32, v1

    move-object/from16 v2, v33

    invoke-virtual/range {v2 .. v32}, Lcom/perm/kate/api/Api;->searchUser(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/Long;)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, v0, Lcom/perm/kate/session/Command;->res:Ljava/lang/Object;

    return-void
.end method
