.class Lcom/perm/kate/MessagesFragment$3;
.super Ljava/lang/Object;
.source "MessagesFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/MessagesFragment;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/MessagesFragment;


# direct methods
.method constructor <init>(Lcom/perm/kate/MessagesFragment;)V
    .locals 0

    .line 160
    iput-object p1, p0, Lcom/perm/kate/MessagesFragment$3;->this$0:Lcom/perm/kate/MessagesFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 163
    sget-object v0, Lcom/perm/kate/KApplication;->online:Lcom/perm/kate/Online;

    invoke-virtual {v0}, Lcom/perm/kate/Online;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/perm/kate/MessagesFragment$3;->this$0:Lcom/perm/kate/MessagesFragment;

    iget-wide v1, v0, Lcom/perm/kate/MessagesFragment;->group_id:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-eqz v5, :cond_0

    goto :goto_0

    .line 167
    :cond_0
    invoke-virtual {v0}, Lcom/perm/kate/MessagesFragment;->offlineRefreshInThread()V

    goto :goto_1

    .line 164
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/perm/kate/MessagesFragment$3;->this$0:Lcom/perm/kate/MessagesFragment;

    invoke-virtual {v0}, Lcom/perm/kate/MessagesFragment;->refreshInThread()V

    :goto_1
    return-void
.end method
