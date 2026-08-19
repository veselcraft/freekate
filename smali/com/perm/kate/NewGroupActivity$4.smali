.class Lcom/perm/kate/NewGroupActivity$4;
.super Ljava/lang/Object;
.source "NewGroupActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perm/kate/NewGroupActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/NewGroupActivity;


# direct methods
.method constructor <init>(Lcom/perm/kate/NewGroupActivity;)V
    .locals 0

    .line 75
    iput-object p1, p0, Lcom/perm/kate/NewGroupActivity$4;->this$0:Lcom/perm/kate/NewGroupActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 78
    iget-object p1, p0, Lcom/perm/kate/NewGroupActivity$4;->this$0:Lcom/perm/kate/NewGroupActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    return-void
.end method
