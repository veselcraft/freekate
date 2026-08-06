.class Lcom/perm/kate/SyncActivity$6$1;
.super Ljava/lang/Object;
.source "SyncActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/SyncActivity$6;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/perm/kate/SyncActivity$6;


# direct methods
.method constructor <init>(Lcom/perm/kate/SyncActivity$6;)V
    .locals 0
    .param p1, "this$1"    # Lcom/perm/kate/SyncActivity$6;

    .prologue
    .line 211
    iput-object p1, p0, Lcom/perm/kate/SyncActivity$6$1;->this$1:Lcom/perm/kate/SyncActivity$6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "item"    # I

    .prologue
    .line 213
    iget-object v0, p0, Lcom/perm/kate/SyncActivity$6$1;->this$1:Lcom/perm/kate/SyncActivity$6;

    iget-object v0, v0, Lcom/perm/kate/SyncActivity$6;->this$0:Lcom/perm/kate/SyncActivity;

    iput p2, v0, Lcom/perm/kate/SyncActivity;->selected:I

    .line 214
    return-void
.end method
