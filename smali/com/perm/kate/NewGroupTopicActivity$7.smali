.class Lcom/perm/kate/NewGroupTopicActivity$7;
.super Ljava/lang/Object;
.source "NewGroupTopicActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perm/kate/NewGroupTopicActivity;
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
    .param p1, "this$0"    # Lcom/perm/kate/NewGroupTopicActivity;

    .prologue
    .line 144
    iput-object p1, p0, Lcom/perm/kate/NewGroupTopicActivity$7;->this$0:Lcom/perm/kate/NewGroupTopicActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 147
    iget-object v0, p0, Lcom/perm/kate/NewGroupTopicActivity$7;->this$0:Lcom/perm/kate/NewGroupTopicActivity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/perm/kate/NewGroupTopicActivity;->showDialog(I)V

    .line 148
    return-void
.end method
