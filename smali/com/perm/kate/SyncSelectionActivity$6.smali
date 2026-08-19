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

    .line 137
    iput-object p1, p0, Lcom/perm/kate/SyncSelectionActivity$6;->this$0:Lcom/perm/kate/SyncSelectionActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 140
    iget-object p1, p0, Lcom/perm/kate/SyncSelectionActivity$6;->this$0:Lcom/perm/kate/SyncSelectionActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    return-void
.end method
