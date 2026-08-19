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

    .line 132
    iput-object p1, p0, Lcom/perm/kate/SyncActivity$4;->this$0:Lcom/perm/kate/SyncActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 136
    iget-object p1, p0, Lcom/perm/kate/SyncActivity$4;->this$0:Lcom/perm/kate/SyncActivity;

    iget-object p2, p1, Lcom/perm/kate/SyncActivity;->user_id:Ljava/lang/String;

    invoke-static {p2, p1}, Lcom/perm/kate/sync/SyncLogic;->deleteRawContacts(Ljava/lang/String;Landroid/content/Context;)V

    .line 137
    iget-object p1, p0, Lcom/perm/kate/SyncActivity$4;->this$0:Lcom/perm/kate/SyncActivity;

    iget-object p2, p1, Lcom/perm/kate/SyncActivity;->user_id:Ljava/lang/String;

    invoke-static {p2, p1}, Lcom/perm/kate/sync/SyncLogic;->removeAccount(Ljava/lang/String;Landroid/content/Context;)V

    .line 138
    iget-object p1, p0, Lcom/perm/kate/SyncActivity$4;->this$0:Lcom/perm/kate/SyncActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    return-void
.end method
