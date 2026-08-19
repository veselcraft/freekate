.class Lcom/perm/kate/MessagesFragment$5;
.super Ljava/lang/Thread;
.source "MessagesFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/MessagesFragment;->offlineRefreshInThread()V
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

    .line 187
    iput-object p1, p0, Lcom/perm/kate/MessagesFragment$5;->this$0:Lcom/perm/kate/MessagesFragment;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 190
    iget-object v0, p0, Lcom/perm/kate/MessagesFragment$5;->this$0:Lcom/perm/kate/MessagesFragment;

    invoke-static {v0}, Lcom/perm/kate/MessagesFragment;->access$300(Lcom/perm/kate/MessagesFragment;)V

    return-void
.end method
