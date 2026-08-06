.class Lcom/perm/kate/Settings$47;
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
    .param p1, "this$0"    # Lcom/perm/kate/Settings;

    .prologue
    .line 1245
    iput-object p1, p0, Lcom/perm/kate/Settings$47;->this$0:Lcom/perm/kate/Settings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 1248
    if-nez p2, :cond_1

    .line 1249
    iget-object v0, p0, Lcom/perm/kate/Settings$47;->this$0:Lcom/perm/kate/Settings;

    const/16 v1, 0x708

    invoke-static {v0, v1}, Lcom/perm/kate/Settings;->access$2100(Lcom/perm/kate/Settings;I)V

    .line 1259
    :cond_0
    :goto_0
    return-void

    .line 1250
    :cond_1
    const/4 v0, 0x1

    if-ne p2, v0, :cond_2

    .line 1251
    iget-object v0, p0, Lcom/perm/kate/Settings$47;->this$0:Lcom/perm/kate/Settings;

    const/16 v1, 0xe10

    invoke-static {v0, v1}, Lcom/perm/kate/Settings;->access$2100(Lcom/perm/kate/Settings;I)V

    goto :goto_0

    .line 1252
    :cond_2
    const/4 v0, 0x2

    if-ne p2, v0, :cond_3

    .line 1253
    iget-object v0, p0, Lcom/perm/kate/Settings$47;->this$0:Lcom/perm/kate/Settings;

    const/16 v1, 0x1c20

    invoke-static {v0, v1}, Lcom/perm/kate/Settings;->access$2100(Lcom/perm/kate/Settings;I)V

    goto :goto_0

    .line 1254
    :cond_3
    const/4 v0, 0x3

    if-ne p2, v0, :cond_4

    .line 1255
    iget-object v0, p0, Lcom/perm/kate/Settings$47;->this$0:Lcom/perm/kate/Settings;

    const/16 v1, 0x3840

    invoke-static {v0, v1}, Lcom/perm/kate/Settings;->access$2100(Lcom/perm/kate/Settings;I)V

    goto :goto_0

    .line 1256
    :cond_4
    const/4 v0, 0x4

    if-ne p2, v0, :cond_0

    .line 1257
    iget-object v0, p0, Lcom/perm/kate/Settings$47;->this$0:Lcom/perm/kate/Settings;

    const/16 v1, 0x7080

    invoke-static {v0, v1}, Lcom/perm/kate/Settings;->access$2100(Lcom/perm/kate/Settings;I)V

    goto :goto_0
.end method
