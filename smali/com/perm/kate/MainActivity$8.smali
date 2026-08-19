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

    .line 637
    iput-object p1, p0, Lcom/perm/kate/MainActivity$8;->this$0:Lcom/perm/kate/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    if-nez p2, :cond_0

    .line 640
    iget-object p1, p0, Lcom/perm/kate/MainActivity$8;->this$0:Lcom/perm/kate/MainActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    :cond_0
    const/4 p1, 0x1

    if-ne p2, p1, :cond_1

    .line 642
    iget-object p1, p0, Lcom/perm/kate/MainActivity$8;->this$0:Lcom/perm/kate/MainActivity;

    invoke-static {p1}, Lcom/perm/kate/MainActivity;->access$600(Lcom/perm/kate/MainActivity;)V

    :cond_1
    return-void
.end method
