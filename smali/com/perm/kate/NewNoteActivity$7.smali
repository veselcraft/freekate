.class Lcom/perm/kate/NewNoteActivity$7;
.super Ljava/lang/Object;
.source "NewNoteActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/NewNoteActivity;->finishOnUiThread()V
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

    .line 138
    iput-object p1, p0, Lcom/perm/kate/NewNoteActivity$7;->this$0:Lcom/perm/kate/NewNoteActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 141
    iget-object v0, p0, Lcom/perm/kate/NewNoteActivity$7;->this$0:Lcom/perm/kate/NewNoteActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    return-void
.end method
