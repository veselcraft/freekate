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

    .line 117
    iput-object p1, p0, Lcom/perm/kate/SyncActivity$3;->this$0:Lcom/perm/kate/SyncActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 120
    iget-object p1, p0, Lcom/perm/kate/SyncActivity$3;->this$0:Lcom/perm/kate/SyncActivity;

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/perm/kate/SyncActivity$3;->this$0:Lcom/perm/kate/SyncActivity;

    const-class v2, Lcom/perm/kate/SyncSelectionActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
