.class Lcom/perm/kate/MessageSender$3$1;
.super Ljava/lang/Object;
.source "MessageSender.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/MessageSender$3;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/perm/kate/MessageSender$3;


# direct methods
.method constructor <init>(Lcom/perm/kate/MessageSender$3;)V
    .locals 0
    .param p1, "this$1"    # Lcom/perm/kate/MessageSender$3;

    .prologue
    .line 144
    iput-object p1, p0, Lcom/perm/kate/MessageSender$3$1;->this$1:Lcom/perm/kate/MessageSender$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialogInterface"    # Landroid/content/DialogInterface;
    .param p2, "i"    # I

    .prologue
    .line 147
    const-string v0, "stickers?tab=free"

    invoke-static {v0}, Lcom/perm/kate/KApplication;->instanceLink(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/perm/kate/MessageSender$3$1;->this$1:Lcom/perm/kate/MessageSender$3;

    iget-object v1, v1, Lcom/perm/kate/MessageSender$3;->val$a:Landroid/app/Activity;

    invoke-static {v0, v1}, Lcom/perm/kate/Helper;->openUrlInBrowser(Ljava/lang/String;Landroid/content/Context;)V

    .line 148
    return-void
.end method
