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

    .line 111
    iput-object p1, p0, Lcom/perm/kate/NewGroupTopicActivity$5;->this$0:Lcom/perm/kate/NewGroupTopicActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 113
    iget-object p1, p0, Lcom/perm/kate/NewGroupTopicActivity$5;->this$0:Lcom/perm/kate/NewGroupTopicActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    return-void
.end method
