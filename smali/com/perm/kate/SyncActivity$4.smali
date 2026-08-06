.class Lcom/perm/kate/SyncActivity$4;
.super Ljava/lang/Object;
.source "SyncActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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
    .line 143
    iput-object p1, p0, Lcom/perm/kate/SyncActivity$4;->this$0:Lcom/perm/kate/SyncActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 147
    iget-object v0, p0, Lcom/perm/kate/SyncActivity$4;->this$0:Lcom/perm/kate/SyncActivity;

    iget-object v0, v0, Lcom/perm/kate/SyncActivity;->user_id:Ljava/lang/String;

    iget-object v1, p0, Lcom/perm/kate/SyncActivity$4;->this$0:Lcom/perm/kate/SyncActivity;

    invoke-static {v0, v1}, Lcom/perm/kate/sync/SyncLogic;->deleteRawContacts(Ljava/lang/String;Landroid/content/Context;)V

    .line 148
    iget-object v0, p0, Lcom/perm/kate/SyncActivity$4;->this$0:Lcom/perm/kate/SyncActivity;

    iget-object v0, v0, Lcom/perm/kate/SyncActivity;->user_id:Ljava/lang/String;

    iget-object v1, p0, Lcom/perm/kate/SyncActivity$4;->this$0:Lcom/perm/kate/SyncActivity;

    invoke-static {v0, v1}, Lcom/perm/kate/sync/SyncLogic;->removeAccount(Ljava/lang/String;Landroid/content/Context;)V

    .line 149
    iget-object v0, p0, Lcom/perm/kate/SyncActivity$4;->this$0:Lcom/perm/kate/SyncActivity;

    invoke-virtual {v0}, Lcom/perm/kate/SyncActivity;->finish()V

    .line 150
    return-void
.end method
