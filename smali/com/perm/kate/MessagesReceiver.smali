.class public Lcom/perm/kate/MessagesReceiver;
.super Landroid/content/BroadcastReceiver;
.source "MessagesReceiver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 14
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    const-string v0, "com.perm.kate.intent.action.new_messages"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 15
    invoke-static {p1}, Lcom/perm/kate/KateWidgetMessages;->displayNewData(Landroid/content/Context;)V

    :cond_0
    return-void
.end method
