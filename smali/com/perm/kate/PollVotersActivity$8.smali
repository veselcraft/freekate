.class Lcom/perm/kate/PollVotersActivity$8;
.super Ljava/lang/Object;
.source "PollVotersActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/PollVotersActivity;->displayDataInUI(Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/PollVotersActivity;

.field final synthetic val$users:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/perm/kate/PollVotersActivity;Ljava/util/ArrayList;)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/PollVotersActivity;

    .prologue
    .line 231
    iput-object p1, p0, Lcom/perm/kate/PollVotersActivity$8;->this$0:Lcom/perm/kate/PollVotersActivity;

    iput-object p2, p0, Lcom/perm/kate/PollVotersActivity$8;->val$users:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 234
    iget-object v0, p0, Lcom/perm/kate/PollVotersActivity$8;->this$0:Lcom/perm/kate/PollVotersActivity;

    iget-object v1, p0, Lcom/perm/kate/PollVotersActivity$8;->val$users:Ljava/util/ArrayList;

    invoke-static {v0, v1}, Lcom/perm/kate/PollVotersActivity;->access$1300(Lcom/perm/kate/PollVotersActivity;Ljava/util/ArrayList;)V

    .line 235
    return-void
.end method
