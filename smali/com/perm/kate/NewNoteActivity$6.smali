.class Lcom/perm/kate/NewNoteActivity$6;
.super Ljava/lang/Object;
.source "NewNoteActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/NewNoteActivity;->onConfirmCancel()Z
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

    .line 123
    iput-object p1, p0, Lcom/perm/kate/NewNoteActivity$6;->this$0:Lcom/perm/kate/NewNoteActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 125
    iget-object p1, p0, Lcom/perm/kate/NewNoteActivity$6;->this$0:Lcom/perm/kate/NewNoteActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    return-void
.end method
