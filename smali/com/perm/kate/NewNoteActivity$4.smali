.class Lcom/perm/kate/NewNoteActivity$4;
.super Ljava/lang/Object;
.source "NewNoteActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perm/kate/NewNoteActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/NewNoteActivity;


# direct methods
.method constructor <init>(Lcom/perm/kate/NewNoteActivity;)V
    .locals 0

    .line 100
    iput-object p1, p0, Lcom/perm/kate/NewNoteActivity$4;->this$0:Lcom/perm/kate/NewNoteActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 103
    iget-object p1, p0, Lcom/perm/kate/NewNoteActivity$4;->this$0:Lcom/perm/kate/NewNoteActivity;

    invoke-static {p1}, Lcom/perm/kate/NewNoteActivity;->access$500(Lcom/perm/kate/NewNoteActivity;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 104
    iget-object p1, p0, Lcom/perm/kate/NewNoteActivity$4;->this$0:Lcom/perm/kate/NewNoteActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    :cond_0
    return-void
.end method
