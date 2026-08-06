.class Lcom/perm/kate/SyncActivity$3;
.super Ljava/lang/Object;
.source "SyncActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perm/kate/SyncActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/SyncActivity;


# direct methods
.method constructor <init>(Lcom/perm/kate/SyncActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/SyncActivity;

    .prologue
    .line 128
    iput-object p1, p0, Lcom/perm/kate/SyncActivity$3;->this$0:Lcom/perm/kate/SyncActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 131
    iget-object v0, p0, Lcom/perm/kate/SyncActivity$3;->this$0:Lcom/perm/kate/SyncActivity;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/perm/kate/SyncActivity$3;->this$0:Lcom/perm/kate/SyncActivity;

    const-class v3, Lcom/perm/kate/SyncSelectionActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Lcom/perm/kate/SyncActivity;->startActivity(Landroid/content/Intent;)V

    .line 132
    return-void
.end method
