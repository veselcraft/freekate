.class Lcom/perm/kate/session/Session$6;
.super Lcom/perm/kate/session/Command;
.source "Session.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/session/Session;->getProfiles(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/session/Session;

.field final synthetic val$domains:Ljava/util/ArrayList;

.field final synthetic val$fields:Ljava/lang/String;

.field final synthetic val$name_case:Ljava/lang/String;

.field final synthetic val$uids:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/perm/kate/session/Session;Lcom/perm/kate/session/Callback;Landroid/app/Activity;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/session/Session;
    .param p2, "callback"    # Lcom/perm/kate/session/Callback;
    .param p3, "activity"    # Landroid/app/Activity;

    .prologue
    .line 226
    iput-object p1, p0, Lcom/perm/kate/session/Session$6;->this$0:Lcom/perm/kate/session/Session;

    iput-object p4, p0, Lcom/perm/kate/session/Session$6;->val$uids:Ljava/util/ArrayList;

    iput-object p5, p0, Lcom/perm/kate/session/Session$6;->val$domains:Ljava/util/ArrayList;

    iput-object p6, p0, Lcom/perm/kate/session/Session$6;->val$fields:Ljava/lang/String;

    iput-object p7, p0, Lcom/perm/kate/session/Session$6;->val$name_case:Ljava/lang/String;

    invoke-direct {p0, p2, p3}, Lcom/perm/kate/session/Command;-><init>(Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 229
    iget-object v0, p0, Lcom/perm/kate/session/Session$6;->this$0:Lcom/perm/kate/session/Session;

    iget-object v0, v0, Lcom/perm/kate/session/Session;->api:Lcom/perm/kate/api/Api;

    iget-object v1, p0, Lcom/perm/kate/session/Session$6;->val$uids:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/perm/kate/session/Session$6;->val$domains:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/perm/kate/session/Session$6;->val$fields:Ljava/lang/String;

    iget-object v4, p0, Lcom/perm/kate/session/Session$6;->val$name_case:Ljava/lang/String;

    iget-object v5, p0, Lcom/perm/kate/session/Session$6;->captcha_key:Ljava/lang/String;

    iget-object v6, p0, Lcom/perm/kate/session/Session$6;->captcha_sid:Ljava/lang/String;

    invoke-virtual/range {v0 .. v6}, Lcom/perm/kate/api/Api;->getProfiles(Ljava/util/Collection;Ljava/util/Collection;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/perm/kate/session/Session$6;->res:Ljava/lang/Object;

    .line 230
    return-void
.end method
