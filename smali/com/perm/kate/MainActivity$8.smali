.class Lcom/perm/kate/MainActivity$8;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/MainActivity;->exitClick()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/MainActivity;


# direct methods
.method constructor <init>(Lcom/perm/kate/MainActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/MainActivity;

    .prologue
    .line 591
    iput-object p1, p0, Lcom/perm/kate/MainActivity$8;->this$0:Lcom/perm/kate/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "item"    # I

    .prologue
    .line 593
    if-nez p2, :cond_0

    .line 594
    iget-object v0, p0, Lcom/perm/kate/MainActivity$8;->this$0:Lcom/perm/kate/MainActivity;

    invoke-virtual {v0}, Lcom/perm/kate/MainActivity;->finish()V

    .line 595
    :cond_0
    const/4 v0, 0x1

    if-ne p2, v0, :cond_1

    .line 596
    iget-object v0, p0, Lcom/perm/kate/MainActivity$8;->this$0:Lcom/perm/kate/MainActivity;

    invoke-static {v0}, Lcom/perm/kate/MainActivity;->access$800(Lcom/perm/kate/MainActivity;)V

    .line 597
    :cond_1
    return-void
.end method
