.class Lcom/perm/kate/MessageSaveActivity$5;
.super Ljava/lang/Object;
.source "MessageSaveActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perm/kate/MessageSaveActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/MessageSaveActivity;


# direct methods
.method constructor <init>(Lcom/perm/kate/MessageSaveActivity;)V
    .locals 0

    .line 214
    iput-object p1, p0, Lcom/perm/kate/MessageSaveActivity$5;->this$0:Lcom/perm/kate/MessageSaveActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 217
    iget-object p1, p0, Lcom/perm/kate/MessageSaveActivity$5;->this$0:Lcom/perm/kate/MessageSaveActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    return-void
.end method
