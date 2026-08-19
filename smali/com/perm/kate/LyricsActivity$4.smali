.class Lcom/perm/kate/LyricsActivity$4;
.super Ljava/lang/Object;
.source "LyricsActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/LyricsActivity;->displayOnUiThread()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/LyricsActivity;


# direct methods
.method constructor <init>(Lcom/perm/kate/LyricsActivity;)V
    .locals 0

    .line 77
    iput-object p1, p0, Lcom/perm/kate/LyricsActivity$4;->this$0:Lcom/perm/kate/LyricsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 80
    iget-object v0, p0, Lcom/perm/kate/LyricsActivity$4;->this$0:Lcom/perm/kate/LyricsActivity;

    invoke-static {v0}, Lcom/perm/kate/LyricsActivity;->access$500(Lcom/perm/kate/LyricsActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/perm/kate/LyricsActivity$4;->this$0:Lcom/perm/kate/LyricsActivity;

    invoke-static {v1}, Lcom/perm/kate/LyricsActivity;->access$300(Lcom/perm/kate/LyricsActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
