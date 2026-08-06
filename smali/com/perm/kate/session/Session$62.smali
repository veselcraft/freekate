.class Lcom/perm/kate/session/Session$62;
.super Lcom/perm/kate/session/Command;
.source "Session.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/session/Session;->searchAudio(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Long;Ljava/lang/Long;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/session/Session;

.field final synthetic val$count:Ljava/lang/Long;

.field final synthetic val$lyrics:Ljava/lang/String;

.field final synthetic val$offset:Ljava/lang/Long;

.field final synthetic val$performer_only:Ljava/lang/Integer;

.field final synthetic val$q:Ljava/lang/String;

.field final synthetic val$sort:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/perm/kate/session/Session;Lcom/perm/kate/session/Callback;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Long;Ljava/lang/Long;)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/session/Session;
    .param p2, "callback"    # Lcom/perm/kate/session/Callback;
    .param p3, "activity"    # Landroid/app/Activity;

    .prologue
    .line 747
    iput-object p1, p0, Lcom/perm/kate/session/Session$62;->this$0:Lcom/perm/kate/session/Session;

    iput-object p4, p0, Lcom/perm/kate/session/Session$62;->val$q:Ljava/lang/String;

    iput-object p5, p0, Lcom/perm/kate/session/Session$62;->val$sort:Ljava/lang/String;

    iput-object p6, p0, Lcom/perm/kate/session/Session$62;->val$lyrics:Ljava/lang/String;

    iput-object p7, p0, Lcom/perm/kate/session/Session$62;->val$performer_only:Ljava/lang/Integer;

    iput-object p8, p0, Lcom/perm/kate/session/Session$62;->val$count:Ljava/lang/Long;

    iput-object p9, p0, Lcom/perm/kate/session/Session$62;->val$offset:Ljava/lang/Long;

    invoke-direct {p0, p2, p3}, Lcom/perm/kate/session/Command;-><init>(Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 750
    iget-object v0, p0, Lcom/perm/kate/session/Session$62;->this$0:Lcom/perm/kate/session/Session;

    iget-object v0, v0, Lcom/perm/kate/session/Session;->api:Lcom/perm/kate/api/Api;

    iget-object v1, p0, Lcom/perm/kate/session/Session$62;->val$q:Ljava/lang/String;

    iget-object v2, p0, Lcom/perm/kate/session/Session$62;->val$sort:Ljava/lang/String;

    iget-object v3, p0, Lcom/perm/kate/session/Session$62;->val$lyrics:Ljava/lang/String;

    iget-object v4, p0, Lcom/perm/kate/session/Session$62;->val$performer_only:Ljava/lang/Integer;

    iget-object v5, p0, Lcom/perm/kate/session/Session$62;->val$count:Ljava/lang/Long;

    iget-object v6, p0, Lcom/perm/kate/session/Session$62;->val$offset:Ljava/lang/Long;

    invoke-static {}, Lcom/perm/kate/session/Session;->isMusicOverHttp()Z

    move-result v7

    iget-object v8, p0, Lcom/perm/kate/session/Session$62;->captcha_key:Ljava/lang/String;

    iget-object v9, p0, Lcom/perm/kate/session/Session$62;->captcha_sid:Ljava/lang/String;

    invoke-virtual/range {v0 .. v9}, Lcom/perm/kate/api/Api;->searchAudio(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Long;Ljava/lang/Long;ZLjava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/perm/kate/session/Session$62;->res:Ljava/lang/Object;

    .line 751
    return-void
.end method
