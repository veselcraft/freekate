.class Lcom/perm/kate/NewGroupTopicActivity$3;
.super Ljava/lang/Object;
.source "NewGroupTopicActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/NewGroupTopicActivity;->enableButtonOnUiThread()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/NewGroupTopicActivity;


# direct methods
.method constructor <init>(Lcom/perm/kate/NewGroupTopicActivity;)V
    .locals 0

    .line 99
    iput-object p1, p0, Lcom/perm/kate/NewGroupTopicActivity$3;->this$0:Lcom/perm/kate/NewGroupTopicActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 102
    iget-object v0, p0, Lcom/perm/kate/NewGroupTopicActivity$3;->this$0:Lcom/perm/kate/NewGroupTopicActivity;

    invoke-static {v0}, Lcom/perm/kate/NewGroupTopicActivity;->access$400(Lcom/perm/kate/NewGroupTopicActivity;)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    return-void
.end method
