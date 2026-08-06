.class Lcom/perm/kate/SyncActivity$2;
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
    .line 121
    iput-object p1, p0, Lcom/perm/kate/SyncActivity$2;->this$0:Lcom/perm/kate/SyncActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 124
    iget-object v0, p0, Lcom/perm/kate/SyncActivity$2;->this$0:Lcom/perm/kate/SyncActivity;

    invoke-virtual {v0}, Lcom/perm/kate/SyncActivity;->finish()V

    .line 125
    return-void
.end method
