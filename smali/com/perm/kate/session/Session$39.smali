.class Lcom/perm/kate/session/Session$39;
.super Lcom/perm/kate/session/Command;
.source "Session.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/session/Session;->getAudio(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/util/ArrayList;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/session/Session;

.field final synthetic val$aids:Ljava/util/ArrayList;

.field final synthetic val$album_id:Ljava/lang/Long;

.field final synthetic val$gid:Ljava/lang/Long;

.field final synthetic val$uid:Ljava/lang/Long;


# direct methods
.method constructor <init>(Lcom/perm/kate/session/Session;Lcom/perm/kate/session/Callback;Landroid/app/Activity;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/util/ArrayList;)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/session/Session;
    .param p2, "callback"    # Lcom/perm/kate/session/Callback;
    .param p3, "activity"    # Landroid/app/Activity;

    .prologue
    .line 526
    iput-object p1, p0, Lcom/perm/kate/session/Session$39;->this$0:Lcom/perm/kate/session/Session;

    iput-object p4, p0, Lcom/perm/kate/session/Session$39;->val$uid:Ljava/lang/Long;

    iput-object p5, p0, Lcom/perm/kate/session/Session$39;->val$gid:Ljava/lang/Long;

    iput-object p6, p0, Lcom/perm/kate/session/Session$39;->val$album_id:Ljava/lang/Long;

    iput-object p7, p0, Lcom/perm/kate/session/Session$39;->val$aids:Ljava/util/ArrayList;

    invoke-direct {p0, p2, p3}, Lcom/perm/kate/session/Command;-><init>(Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 529
    iget-object v0, p0, Lcom/perm/kate/session/Session$39;->this$0:Lcom/perm/kate/session/Session;

    iget-object v0, v0, Lcom/perm/kate/session/Session;->api:Lcom/perm/kate/api/Api;

    iget-object v1, p0, Lcom/perm/kate/session/Session$39;->val$uid:Ljava/lang/Long;

    iget-object v2, p0, Lcom/perm/kate/session/Session$39;->val$gid:Ljava/lang/Long;

    iget-object v3, p0, Lcom/perm/kate/session/Session$39;->val$album_id:Ljava/lang/Long;

    iget-object v4, p0, Lcom/perm/kate/session/Session$39;->val$aids:Ljava/util/ArrayList;

    invoke-static {}, Lcom/perm/kate/session/Session;->isMusicOverHttp()Z

    move-result v5

    iget-object v6, p0, Lcom/perm/kate/session/Session$39;->captcha_key:Ljava/lang/String;

    iget-object v7, p0, Lcom/perm/kate/session/Session$39;->captcha_sid:Ljava/lang/String;

    invoke-virtual/range {v0 .. v7}, Lcom/perm/kate/api/Api;->getAudio(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/util/Collection;ZLjava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/perm/kate/session/Session$39;->res:Ljava/lang/Object;

    .line 530
    return-void
.end method
