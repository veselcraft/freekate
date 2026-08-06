.class Lcom/perm/kate/session/Session$27;
.super Lcom/perm/kate/session/Command;
.source "Session.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/session/Session;->getFriendsByLid(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Integer;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/session/Session;

.field final synthetic val$fields:Ljava/lang/String;

.field final synthetic val$list_id:Ljava/lang/Integer;

.field final synthetic val$user_id:Ljava/lang/Long;


# direct methods
.method constructor <init>(Lcom/perm/kate/session/Session;Lcom/perm/kate/session/Callback;Landroid/app/Activity;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Integer;)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/session/Session;
    .param p2, "callback"    # Lcom/perm/kate/session/Callback;
    .param p3, "activity"    # Landroid/app/Activity;

    .prologue
    .line 417
    iput-object p1, p0, Lcom/perm/kate/session/Session$27;->this$0:Lcom/perm/kate/session/Session;

    iput-object p4, p0, Lcom/perm/kate/session/Session$27;->val$user_id:Ljava/lang/Long;

    iput-object p5, p0, Lcom/perm/kate/session/Session$27;->val$fields:Ljava/lang/String;

    iput-object p6, p0, Lcom/perm/kate/session/Session$27;->val$list_id:Ljava/lang/Integer;

    invoke-direct {p0, p2, p3}, Lcom/perm/kate/session/Command;-><init>(Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 420
    iget-object v0, p0, Lcom/perm/kate/session/Session$27;->this$0:Lcom/perm/kate/session/Session;

    iget-object v0, v0, Lcom/perm/kate/session/Session;->api:Lcom/perm/kate/api/Api;

    iget-object v1, p0, Lcom/perm/kate/session/Session$27;->val$user_id:Ljava/lang/Long;

    iget-object v2, p0, Lcom/perm/kate/session/Session$27;->val$fields:Ljava/lang/String;

    iget-object v3, p0, Lcom/perm/kate/session/Session$27;->val$list_id:Ljava/lang/Integer;

    iget-object v4, p0, Lcom/perm/kate/session/Session$27;->captcha_key:Ljava/lang/String;

    iget-object v5, p0, Lcom/perm/kate/session/Session$27;->captcha_sid:Ljava/lang/String;

    invoke-virtual/range {v0 .. v5}, Lcom/perm/kate/api/Api;->getFriends(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/perm/kate/session/Session$27;->res:Ljava/lang/Object;

    .line 421
    return-void
.end method
