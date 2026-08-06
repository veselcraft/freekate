.class Lcom/perm/kate/session/Session$171;
.super Lcom/perm/kate/session/Command;
.source "Session.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/session/Session;->getStockItems(Ljava/lang/String;Ljava/lang/String;ZLcom/perm/kate/session/Callback;Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/session/Session;

.field final synthetic val$extended:Z

.field final synthetic val$section:Ljava/lang/String;

.field final synthetic val$type:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/perm/kate/session/Session;Lcom/perm/kate/session/Callback;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/session/Session;
    .param p2, "callback"    # Lcom/perm/kate/session/Callback;
    .param p3, "activity"    # Landroid/app/Activity;

    .prologue
    .line 1765
    iput-object p1, p0, Lcom/perm/kate/session/Session$171;->this$0:Lcom/perm/kate/session/Session;

    iput-object p4, p0, Lcom/perm/kate/session/Session$171;->val$section:Ljava/lang/String;

    iput-object p5, p0, Lcom/perm/kate/session/Session$171;->val$type:Ljava/lang/String;

    iput-boolean p6, p0, Lcom/perm/kate/session/Session$171;->val$extended:Z

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
    .line 1768
    iget-object v0, p0, Lcom/perm/kate/session/Session$171;->this$0:Lcom/perm/kate/session/Session;

    iget-object v0, v0, Lcom/perm/kate/session/Session;->api:Lcom/perm/kate/api/Api;

    iget-object v1, p0, Lcom/perm/kate/session/Session$171;->val$section:Ljava/lang/String;

    iget-object v2, p0, Lcom/perm/kate/session/Session$171;->val$type:Ljava/lang/String;

    iget-boolean v3, p0, Lcom/perm/kate/session/Session$171;->val$extended:Z

    iget-object v4, p0, Lcom/perm/kate/session/Session$171;->captcha_key:Ljava/lang/String;

    iget-object v5, p0, Lcom/perm/kate/session/Session$171;->captcha_sid:Ljava/lang/String;

    invoke-virtual/range {v0 .. v5}, Lcom/perm/kate/api/Api;->getStockItems(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/perm/kate/session/Session$171;->res:Ljava/lang/Object;

    .line 1769
    return-void
.end method
