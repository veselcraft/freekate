.class Lcom/perm/kate/Settings$53;
.super Ljava/lang/Object;
.source "Settings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/Settings;->showSilenceDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/Settings;


# direct methods
.method constructor <init>(Lcom/perm/kate/Settings;)V
    .locals 0

    .line 1410
    iput-object p1, p0, Lcom/perm/kate/Settings$53;->this$0:Lcom/perm/kate/Settings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    if-nez p2, :cond_0

    .line 1414
    iget-object p1, p0, Lcom/perm/kate/Settings$53;->this$0:Lcom/perm/kate/Settings;

    const/16 p2, 0x708

    invoke-static {p1, p2}, Lcom/perm/kate/Settings;->access$2300(Lcom/perm/kate/Settings;I)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    if-ne p2, p1, :cond_1

    .line 1416
    iget-object p1, p0, Lcom/perm/kate/Settings$53;->this$0:Lcom/perm/kate/Settings;

    const/16 p2, 0xe10

    invoke-static {p1, p2}, Lcom/perm/kate/Settings;->access$2300(Lcom/perm/kate/Settings;I)V

    goto :goto_0

    :cond_1
    const/4 p1, 0x2

    if-ne p2, p1, :cond_2

    .line 1418
    iget-object p1, p0, Lcom/perm/kate/Settings$53;->this$0:Lcom/perm/kate/Settings;

    const/16 p2, 0x1c20

    invoke-static {p1, p2}, Lcom/perm/kate/Settings;->access$2300(Lcom/perm/kate/Settings;I)V

    goto :goto_0

    :cond_2
    const/4 p1, 0x3

    if-ne p2, p1, :cond_3

    .line 1420
    iget-object p1, p0, Lcom/perm/kate/Settings$53;->this$0:Lcom/perm/kate/Settings;

    const/16 p2, 0x3840

    invoke-static {p1, p2}, Lcom/perm/kate/Settings;->access$2300(Lcom/perm/kate/Settings;I)V

    goto :goto_0

    :cond_3
    const/4 p1, 0x4

    if-ne p2, p1, :cond_4

    .line 1422
    iget-object p1, p0, Lcom/perm/kate/Settings$53;->this$0:Lcom/perm/kate/Settings;

    const/16 p2, 0x7080

    invoke-static {p1, p2}, Lcom/perm/kate/Settings;->access$2300(Lcom/perm/kate/Settings;I)V

    :cond_4
    :goto_0
    return-void
.end method
