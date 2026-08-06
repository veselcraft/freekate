.class Lcom/perm/kate/NewGroupTopicActivity$5;
.super Ljava/lang/Object;
.source "NewGroupTopicActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/NewGroupTopicActivity;->onConfirmCancel()Z
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
    .line 111
    iput-object p1, p0, Lcom/perm/kate/NewGroupTopicActivity$5;->this$0:Lcom/perm/kate/NewGroupTopicActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "id"    # I

    .prologue
    .line 113
    iget-object v0, p0, Lcom/perm/kate/NewGroupTopicActivity$5;->this$0:Lcom/perm/kate/NewGroupTopicActivity;

    invoke-virtual {v0}, Lcom/perm/kate/NewGroupTopicActivity;->finish()V

    .line 114
    return-void
.end method
