.class Lcom/perm/kate/PollActivity$3;
.super Ljava/lang/Object;
.source "PollActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/PollActivity;->displayDataOnUiThread()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/PollActivity;


# direct methods
.method constructor <init>(Lcom/perm/kate/PollActivity;)V
    .locals 0

    .line 132
    iput-object p1, p0, Lcom/perm/kate/PollActivity$3;->this$0:Lcom/perm/kate/PollActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 135
    iget-object v0, p0, Lcom/perm/kate/PollActivity$3;->this$0:Lcom/perm/kate/PollActivity;

    invoke-static {v0}, Lcom/perm/kate/PollActivity;->access$300(Lcom/perm/kate/PollActivity;)V

    return-void
.end method
