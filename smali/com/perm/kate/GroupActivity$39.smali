.class Lcom/perm/kate/GroupActivity$39;
.super Ljava/lang/Object;
.source "GroupActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/GroupActivity;->showStatusDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/GroupActivity;


# direct methods
.method constructor <init>(Lcom/perm/kate/GroupActivity;)V
    .locals 0

    .line 1181
    iput-object p1, p0, Lcom/perm/kate/GroupActivity$39;->this$0:Lcom/perm/kate/GroupActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 1184
    iget-object p1, p0, Lcom/perm/kate/GroupActivity$39;->this$0:Lcom/perm/kate/GroupActivity;

    invoke-static {p1}, Lcom/perm/kate/GroupActivity;->access$1600(Lcom/perm/kate/GroupActivity;)Lcom/perm/kate/api/Group;

    move-result-object p1

    iget-object p1, p1, Lcom/perm/kate/api/Group;->status:Ljava/lang/String;

    iget-object p2, p0, Lcom/perm/kate/GroupActivity$39;->this$0:Lcom/perm/kate/GroupActivity;

    invoke-static {p1, p2}, Lcom/perm/kate/Helper;->copyText(Ljava/lang/String;Landroid/content/Context;)V

    return-void
.end method
