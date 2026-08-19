.class Lcom/perm/kate/MessageSender$3$1;
.super Ljava/lang/Object;
.source "MessageSender.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic this$1:Lcom/perm/kate/MessageSender$3;


# direct methods
.method constructor <init>(Lcom/perm/kate/MessageSender$3;)V
    .locals 0

    .line 152
    iput-object p1, p0, Lcom/perm/kate/MessageSender$3$1;->this$1:Lcom/perm/kate/MessageSender$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 155
    iget-object p1, p0, Lcom/perm/kate/MessageSender$3$1;->this$1:Lcom/perm/kate/MessageSender$3;

    iget-object p1, p1, Lcom/perm/kate/MessageSender$3;->val$a:Landroid/app/Activity;

    const-string p2, "https://m.vk.com/stickers?tab=free"

    invoke-static {p2, p1}, Lcom/perm/kate/Helper;->openUrlInBrowser(Ljava/lang/String;Landroid/content/Context;)V

    return-void
.end method
