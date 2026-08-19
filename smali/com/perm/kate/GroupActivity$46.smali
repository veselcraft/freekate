.class Lcom/perm/kate/GroupActivity$46;
.super Ljava/lang/Object;
.source "GroupActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perm/kate/GroupActivity;
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

    .line 1311
    iput-object p1, p0, Lcom/perm/kate/GroupActivity$46;->this$0:Lcom/perm/kate/GroupActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 1314
    iget-object p1, p0, Lcom/perm/kate/GroupActivity$46;->this$0:Lcom/perm/kate/GroupActivity;

    invoke-virtual {p1}, Lcom/perm/kate/GroupActivity;->showMessageThread()V

    return-void
.end method
