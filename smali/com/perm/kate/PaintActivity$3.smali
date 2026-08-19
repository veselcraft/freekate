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

    .line 440
    iput-object p1, p0, Lcom/perm/kate/PaintActivity$3;->this$0:Lcom/perm/kate/PaintActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 442
    iget-object p1, p0, Lcom/perm/kate/PaintActivity$3;->this$0:Lcom/perm/kate/PaintActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    return-void
.end method
