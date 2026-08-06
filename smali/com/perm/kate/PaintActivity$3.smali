.class Lcom/perm/kate/PaintActivity$3;
.super Ljava/lang/Object;
.source "PaintActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/PaintActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/PaintActivity;


# direct methods
.method constructor <init>(Lcom/perm/kate/PaintActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/PaintActivity;

    .prologue
    .line 438
    iput-object p1, p0, Lcom/perm/kate/PaintActivity$3;->this$0:Lcom/perm/kate/PaintActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "id"    # I

    .prologue
    .line 440
    iget-object v0, p0, Lcom/perm/kate/PaintActivity$3;->this$0:Lcom/perm/kate/PaintActivity;

    invoke-virtual {v0}, Lcom/perm/kate/PaintActivity;->finish()V

    .line 441
    return-void
.end method
