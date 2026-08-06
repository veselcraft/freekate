.class Lcom/perm/kate/session/Session$76;
.super Lcom/perm/kate/session/Command;
.source "Session.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/session/Session;->searchUserExtended(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


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

.field final synthetic val$interests:Ljava/lang/String;

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

.field final synthetic val$university:Ljava/lang/Integer;

.field final synthetic val$university_country:Ljava/lang/Integer;

.field final synthetic val$university_year:Ljava/lang/Integer;


# direct methods
.method constructor <init>(Lcom/perm/kate/session/Session;Lcom/perm/kate/session/Callback;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V
    .locals 1
    .param p1, "this$0"    # Lcom/perm/kate/session/Session;
    .param p2, "callback"    # Lcom/perm/kate/session/Callback;
    .param p3, "activity"    # Landroid/app/Activity;

    .prologue
    .line 891
    iput-object p1, p0, Lcom/perm/kate/session/Session$76;->this$0:Lcom/perm/kate/session/Session;

    iput-object p4, p0, Lcom/perm/kate/session/Session$76;->val$q:Ljava/lang/String;

    iput-object p5, p0, Lcom/perm/kate/session/Session$76;->val$fields:Ljava/lang/String;

    iput-object p6, p0, Lcom/perm/kate/session/Session$76;->val$count:Ljava/lang/Long;

    iput-object p7, p0, Lcom/perm/kate/session/Session$76;->val$offset:Ljava/lang/Long;

    iput-object p8, p0, Lcom/perm/kate/session/Session$76;->val$sort:Ljava/lang/Integer;

    iput-object p9, p0, Lcom/perm/kate/session/Session$76;->val$city:Ljava/lang/Integer;

    iput-object p10, p0, Lcom/perm/kate/session/Session$76;->val$country:Ljava/lang/Integer;

    iput-object p11, p0, Lcom/perm/kate/session/Session$76;->val$hometown:Ljava/lang/String;

    iput-object p12, p0, Lcom/perm/kate/session/Session$76;->val$university_country:Ljava/lang/Integer;

    iput-object p13, p0, Lcom/perm/kate/session/Session$76;->val$university:Ljava/lang/Integer;

    iput-object p14, p0, Lcom/perm/kate/session/Session$76;->val$university_year:Ljava/lang/Integer;

    move-object/from16 v0, p15

    iput-object v0, p0, Lcom/perm/kate/session/Session$76;->val$sex:Ljava/lang/Integer;

    move-object/from16 v0, p16

    iput-object v0, p0, Lcom/perm/kate/session/Session$76;->val$status:Ljava/lang/Integer;

    move-object/from16 v0, p17

    iput-object v0, p0, Lcom/perm/kate/session/Session$76;->val$age_from:Ljava/lang/Integer;

    move-object/from16 v0, p18

    iput-object v0, p0, Lcom/perm/kate/session/Session$76;->val$age_to:Ljava/lang/Integer;

    move-object/from16 v0, p19

    iput-object v0, p0, Lcom/perm/kate/session/Session$76;->val$birth_day:Ljava/lang/Integer;

    move-object/from16 v0, p20

    iput-object v0, p0, Lcom/perm/kate/session/Session$76;->val$birth_month:Ljava/lang/Integer;

    move-object/from16 v0, p21

    iput-object v0, p0, Lcom/perm/kate/session/Session$76;->val$birth_year:Ljava/lang/Integer;

    move-object/from16 v0, p22

    iput-object v0, p0, Lcom/perm/kate/session/Session$76;->val$online:Ljava/lang/Integer;

    move-object/from16 v0, p23

    iput-object v0, p0, Lcom/perm/kate/session/Session$76;->val$has_photo:Ljava/lang/Integer;

    move-object/from16 v0, p24

    iput-object v0, p0, Lcom/perm/kate/session/Session$76;->val$school_country:Ljava/lang/Integer;

    move-object/from16 v0, p25

    iput-object v0, p0, Lcom/perm/kate/session/Session$76;->val$school_city:Ljava/lang/Integer;

    move-object/from16 v0, p26

    iput-object v0, p0, Lcom/perm/kate/session/Session$76;->val$school:Ljava/lang/Integer;

    move-object/from16 v0, p27

    iput-object v0, p0, Lcom/perm/kate/session/Session$76;->val$school_year:Ljava/lang/Integer;

    move-object/from16 v0, p28

    iput-object v0, p0, Lcom/perm/kate/session/Session$76;->val$religion:Ljava/lang/String;

    move-object/from16 v0, p29

    iput-object v0, p0, Lcom/perm/kate/session/Session$76;->val$interests:Ljava/lang/String;

    move-object/from16 v0, p30

    iput-object v0, p0, Lcom/perm/kate/session/Session$76;->val$company:Ljava/lang/String;

    move-object/from16 v0, p31

    iput-object v0, p0, Lcom/perm/kate/session/Session$76;->val$position:Ljava/lang/String;

    move-object/from16 v0, p32

    iput-object v0, p0, Lcom/perm/kate/session/Session$76;->val$gid:Ljava/lang/Long;

    invoke-direct {p0, p2, p3}, Lcom/perm/kate/session/Command;-><init>(Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 31
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 894
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/perm/kate/session/Session$76;->this$0:Lcom/perm/kate/session/Session;

    iget-object v1, v1, Lcom/perm/kate/session/Session;->api:Lcom/perm/kate/api/Api;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/perm/kate/session/Session$76;->val$q:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/perm/kate/session/Session$76;->val$fields:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/perm/kate/session/Session$76;->val$count:Ljava/lang/Long;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/perm/kate/session/Session$76;->val$offset:Ljava/lang/Long;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/perm/kate/session/Session$76;->val$sort:Ljava/lang/Integer;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/perm/kate/session/Session$76;->val$city:Ljava/lang/Integer;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/perm/kate/session/Session$76;->val$country:Ljava/lang/Integer;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/perm/kate/session/Session$76;->val$hometown:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/perm/kate/session/Session$76;->val$university_country:Ljava/lang/Integer;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/perm/kate/session/Session$76;->val$university:Ljava/lang/Integer;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/perm/kate/session/Session$76;->val$university_year:Ljava/lang/Integer;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/perm/kate/session/Session$76;->val$sex:Ljava/lang/Integer;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/perm/kate/session/Session$76;->val$status:Ljava/lang/Integer;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/perm/kate/session/Session$76;->val$age_from:Ljava/lang/Integer;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/perm/kate/session/Session$76;->val$age_to:Ljava/lang/Integer;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/perm/kate/session/Session$76;->val$birth_day:Ljava/lang/Integer;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/perm/kate/session/Session$76;->val$birth_month:Ljava/lang/Integer;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/perm/kate/session/Session$76;->val$birth_year:Ljava/lang/Integer;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/perm/kate/session/Session$76;->val$online:Ljava/lang/Integer;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/perm/kate/session/Session$76;->val$has_photo:Ljava/lang/Integer;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/perm/kate/session/Session$76;->val$school_country:Ljava/lang/Integer;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/perm/kate/session/Session$76;->val$school_city:Ljava/lang/Integer;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/perm/kate/session/Session$76;->val$school:Ljava/lang/Integer;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/perm/kate/session/Session$76;->val$school_year:Ljava/lang/Integer;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/perm/kate/session/Session$76;->val$religion:Ljava/lang/String;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/perm/kate/session/Session$76;->val$interests:Ljava/lang/String;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/perm/kate/session/Session$76;->val$company:Ljava/lang/String;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/perm/kate/session/Session$76;->val$position:Ljava/lang/String;

    move-object/from16 v29, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/perm/kate/session/Session$76;->val$gid:Ljava/lang/Long;

    move-object/from16 v30, v0

    invoke-virtual/range {v1 .. v30}, Lcom/perm/kate/api/Api;->searchUserExtended(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)Ljava/util/ArrayList;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/perm/kate/session/Session$76;->res:Ljava/lang/Object;

    .line 899
    return-void
.end method
