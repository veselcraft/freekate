.class Lcom/perm/kate/session/Session$188;
.super Lcom/perm/kate/session/Command;
.source "Session.java"


# instance fields
.field final synthetic this$0:Lcom/perm/kate/session/Session;

.field final synthetic val$bdate:Ljava/lang/String;

.field final synthetic val$bdate_visibility:Ljava/lang/Integer;

.field final synthetic val$cancel_request_id:Ljava/lang/Long;

.field final synthetic val$city_id:Ljava/lang/Integer;

.field final synthetic val$country_id:Ljava/lang/Integer;

.field final synthetic val$first_name:Ljava/lang/String;

.field final synthetic val$home_town:Ljava/lang/String;

.field final synthetic val$last_name:Ljava/lang/String;

.field final synthetic val$maiden_name:Ljava/lang/String;

.field final synthetic val$relation:Ljava/lang/Integer;

.field final synthetic val$relation_partner_id:Ljava/lang/Long;

.field final synthetic val$sex:Ljava/lang/Integer;


# direct methods
.method constructor <init>(Lcom/perm/kate/session/Session;Lcom/perm/kate/session/Callback;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;)V
    .locals 0

    .line 2014
    iput-object p1, p0, Lcom/perm/kate/session/Session$188;->this$0:Lcom/perm/kate/session/Session;

    iput-object p4, p0, Lcom/perm/kate/session/Session$188;->val$first_name:Ljava/lang/String;

    iput-object p5, p0, Lcom/perm/kate/session/Session$188;->val$last_name:Ljava/lang/String;

    iput-object p6, p0, Lcom/perm/kate/session/Session$188;->val$maiden_name:Ljava/lang/String;

    iput-object p7, p0, Lcom/perm/kate/session/Session$188;->val$cancel_request_id:Ljava/lang/Long;

    iput-object p8, p0, Lcom/perm/kate/session/Session$188;->val$sex:Ljava/lang/Integer;

    iput-object p9, p0, Lcom/perm/kate/session/Session$188;->val$relation:Ljava/lang/Integer;

    iput-object p10, p0, Lcom/perm/kate/session/Session$188;->val$relation_partner_id:Ljava/lang/Long;

    iput-object p11, p0, Lcom/perm/kate/session/Session$188;->val$bdate:Ljava/lang/String;

    iput-object p12, p0, Lcom/perm/kate/session/Session$188;->val$bdate_visibility:Ljava/lang/Integer;

    iput-object p13, p0, Lcom/perm/kate/session/Session$188;->val$home_town:Ljava/lang/String;

    iput-object p14, p0, Lcom/perm/kate/session/Session$188;->val$country_id:Ljava/lang/Integer;

    iput-object p15, p0, Lcom/perm/kate/session/Session$188;->val$city_id:Ljava/lang/Integer;

    invoke-direct {p0, p2, p3}, Lcom/perm/kate/session/Command;-><init>(Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 14

    .line 2017
    iget-object v0, p0, Lcom/perm/kate/session/Session$188;->this$0:Lcom/perm/kate/session/Session;

    iget-object v1, v0, Lcom/perm/kate/session/Session;->api:Lcom/perm/kate/api/Api;

    iget-object v2, p0, Lcom/perm/kate/session/Session$188;->val$first_name:Ljava/lang/String;

    iget-object v3, p0, Lcom/perm/kate/session/Session$188;->val$last_name:Ljava/lang/String;

    iget-object v4, p0, Lcom/perm/kate/session/Session$188;->val$maiden_name:Ljava/lang/String;

    iget-object v5, p0, Lcom/perm/kate/session/Session$188;->val$cancel_request_id:Ljava/lang/Long;

    iget-object v6, p0, Lcom/perm/kate/session/Session$188;->val$sex:Ljava/lang/Integer;

    iget-object v7, p0, Lcom/perm/kate/session/Session$188;->val$relation:Ljava/lang/Integer;

    iget-object v8, p0, Lcom/perm/kate/session/Session$188;->val$relation_partner_id:Ljava/lang/Long;

    iget-object v9, p0, Lcom/perm/kate/session/Session$188;->val$bdate:Ljava/lang/String;

    iget-object v10, p0, Lcom/perm/kate/session/Session$188;->val$bdate_visibility:Ljava/lang/Integer;

    iget-object v11, p0, Lcom/perm/kate/session/Session$188;->val$home_town:Ljava/lang/String;

    iget-object v12, p0, Lcom/perm/kate/session/Session$188;->val$country_id:Ljava/lang/Integer;

    iget-object v13, p0, Lcom/perm/kate/session/Session$188;->val$city_id:Ljava/lang/Integer;

    invoke-virtual/range {v1 .. v13}, Lcom/perm/kate/api/Api;->saveProfileInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;)Lcom/perm/kate/api/SaveProdfileInfoResult;

    move-result-object v0

    iput-object v0, p0, Lcom/perm/kate/session/Command;->res:Ljava/lang/Object;

    return-void
.end method
