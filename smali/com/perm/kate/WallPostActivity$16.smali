.class Lcom/perm/kate/WallPostActivity$16;
.super Ljava/lang/Object;
.source "WallPostActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/WallPostActivity;->showCancelConfirmDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/WallPostActivity;


# direct methods
.method constructor <init>(Lcom/perm/kate/WallPostActivity;)V
    .locals 0

    .line 1054
    iput-object p1, p0, Lcom/perm/kate/WallPostActivity$16;->this$0:Lcom/perm/kate/WallPostActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 1056
    iget-object p1, p0, Lcom/perm/kate/WallPostActivity$16;->this$0:Lcom/perm/kate/WallPostActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    return-void
.end method
