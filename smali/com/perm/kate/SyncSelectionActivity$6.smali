.class Lcom/perm/kate/SyncSelectionActivity$6;
.super Ljava/lang/Object;
.source "SyncSelectionActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perm/kate/SyncSelectionActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/SyncSelectionActivity;


# direct methods
.method constructor <init>(Lcom/perm/kate/SyncSelectionActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/SyncSelectionActivity;

    .prologue
    .line 137
    iput-object p1, p0, Lcom/perm/kate/SyncSelectionActivity$6;->this$0:Lcom/perm/kate/SyncSelectionActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 140
    iget-object v0, p0, Lcom/perm/kate/SyncSelectionActivity$6;->this$0:Lcom/perm/kate/SyncSelectionActivity;

    invoke-virtual {v0}, Lcom/perm/kate/SyncSelectionActivity;->finish()V

    .line 141
    return-void
.end method
