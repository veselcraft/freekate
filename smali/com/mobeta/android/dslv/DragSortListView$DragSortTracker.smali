.class Lcom/mobeta/android/dslv/DragSortListView$DragSortTracker;
.super Ljava/lang/Object;
.source "DragSortListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mobeta/android/dslv/DragSortListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DragSortTracker"
.end annotation


# instance fields
.field mBuilder:Ljava/lang/StringBuilder;

.field mFile:Ljava/io/File;

.field private mNumFlushes:I

.field private mNumInBuffer:I

.field private mTracking:Z

.field final synthetic this$0:Lcom/mobeta/android/dslv/DragSortListView;


# direct methods
.method public constructor <init>(Lcom/mobeta/android/dslv/DragSortListView;)V
    .locals 3

    const-string v0, "mobeta"

    .line 2967
    iput-object p1, p0, Lcom/mobeta/android/dslv/DragSortListView$DragSortTracker;->this$0:Lcom/mobeta/android/dslv/DragSortListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2958
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iput-object p1, p0, Lcom/mobeta/android/dslv/DragSortListView$DragSortTracker;->mBuilder:Ljava/lang/StringBuilder;

    const/4 p1, 0x0

    .line 2962
    iput p1, p0, Lcom/mobeta/android/dslv/DragSortListView$DragSortTracker;->mNumInBuffer:I

    .line 2963
    iput p1, p0, Lcom/mobeta/android/dslv/DragSortListView$DragSortTracker;->mNumFlushes:I

    .line 2965
    iput-boolean p1, p0, Lcom/mobeta/android/dslv/DragSortListView$DragSortTracker;->mTracking:Z

    .line 2968
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object p1

    .line 2969
    new-instance v1, Ljava/io/File;

    const-string v2, "dslv_state.txt"

    invoke-direct {v1, p1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/mobeta/android/dslv/DragSortListView$DragSortTracker;->mFile:Ljava/io/File;

    .line 2971
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result p1

    if-nez p1, :cond_0

    .line 2973
    :try_start_0
    iget-object p1, p0, Lcom/mobeta/android/dslv/DragSortListView$DragSortTracker;->mFile:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->createNewFile()Z

    const-string p1, "file created"

    .line 2974
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v1, "Could not create dslv_state.txt"

    .line 2976
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2977
    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void
.end method


# virtual methods
.method public appendState()V
    .locals 9

    .line 2990
    iget-boolean v0, p0, Lcom/mobeta/android/dslv/DragSortListView$DragSortTracker;->mTracking:Z

    if-nez v0, :cond_0

    return-void

    .line 2994
    :cond_0
    iget-object v0, p0, Lcom/mobeta/android/dslv/DragSortListView$DragSortTracker;->mBuilder:Ljava/lang/StringBuilder;

    const-string v1, "<DSLVState>\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2995
    iget-object v0, p0, Lcom/mobeta/android/dslv/DragSortListView$DragSortTracker;->this$0:Lcom/mobeta/android/dslv/DragSortListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getChildCount()I

    move-result v0

    .line 2996
    iget-object v1, p0, Lcom/mobeta/android/dslv/DragSortListView$DragSortTracker;->this$0:Lcom/mobeta/android/dslv/DragSortListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v1

    .line 2997
    iget-object v2, p0, Lcom/mobeta/android/dslv/DragSortListView$DragSortTracker;->mBuilder:Ljava/lang/StringBuilder;

    const-string v3, "    <Positions>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    const-string v4, ","

    if-ge v3, v0, :cond_1

    .line 2999
    iget-object v5, p0, Lcom/mobeta/android/dslv/DragSortListView$DragSortTracker;->mBuilder:Ljava/lang/StringBuilder;

    add-int v6, v1, v3

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 3001
    :cond_1
    iget-object v3, p0, Lcom/mobeta/android/dslv/DragSortListView$DragSortTracker;->mBuilder:Ljava/lang/StringBuilder;

    const-string v5, "</Positions>\n"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3003
    iget-object v3, p0, Lcom/mobeta/android/dslv/DragSortListView$DragSortTracker;->mBuilder:Ljava/lang/StringBuilder;

    const-string v5, "    <Tops>"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v0, :cond_2

    .line 3005
    iget-object v5, p0, Lcom/mobeta/android/dslv/DragSortListView$DragSortTracker;->mBuilder:Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/mobeta/android/dslv/DragSortListView$DragSortTracker;->this$0:Lcom/mobeta/android/dslv/DragSortListView;

    invoke-virtual {v6, v3}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 3007
    :cond_2
    iget-object v3, p0, Lcom/mobeta/android/dslv/DragSortListView$DragSortTracker;->mBuilder:Ljava/lang/StringBuilder;

    const-string v5, "</Tops>\n"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3008
    iget-object v3, p0, Lcom/mobeta/android/dslv/DragSortListView$DragSortTracker;->mBuilder:Ljava/lang/StringBuilder;

    const-string v5, "    <Bottoms>"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x0

    :goto_2
    if-ge v3, v0, :cond_3

    .line 3010
    iget-object v5, p0, Lcom/mobeta/android/dslv/DragSortListView$DragSortTracker;->mBuilder:Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/mobeta/android/dslv/DragSortListView$DragSortTracker;->this$0:Lcom/mobeta/android/dslv/DragSortListView;

    invoke-virtual {v6, v3}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getBottom()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 3012
    :cond_3
    iget-object v3, p0, Lcom/mobeta/android/dslv/DragSortListView$DragSortTracker;->mBuilder:Ljava/lang/StringBuilder;

    const-string v5, "</Bottoms>\n"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3014
    iget-object v3, p0, Lcom/mobeta/android/dslv/DragSortListView$DragSortTracker;->mBuilder:Ljava/lang/StringBuilder;

    const-string v5, "    <FirstExpPos>"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/mobeta/android/dslv/DragSortListView$DragSortTracker;->this$0:Lcom/mobeta/android/dslv/DragSortListView;

    invoke-static {v5}, Lcom/mobeta/android/dslv/DragSortListView;->access$1300(Lcom/mobeta/android/dslv/DragSortListView;)I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "</FirstExpPos>\n"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3015
    iget-object v3, p0, Lcom/mobeta/android/dslv/DragSortListView$DragSortTracker;->mBuilder:Ljava/lang/StringBuilder;

    const-string v5, "    <FirstExpBlankHeight>"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/mobeta/android/dslv/DragSortListView$DragSortTracker;->this$0:Lcom/mobeta/android/dslv/DragSortListView;

    .line 3016
    invoke-static {v5}, Lcom/mobeta/android/dslv/DragSortListView;->access$1300(Lcom/mobeta/android/dslv/DragSortListView;)I

    move-result v6

    invoke-static {v5, v6}, Lcom/mobeta/android/dslv/DragSortListView;->access$2800(Lcom/mobeta/android/dslv/DragSortListView;I)I

    move-result v5

    iget-object v6, p0, Lcom/mobeta/android/dslv/DragSortListView$DragSortTracker;->this$0:Lcom/mobeta/android/dslv/DragSortListView;

    invoke-static {v6}, Lcom/mobeta/android/dslv/DragSortListView;->access$1300(Lcom/mobeta/android/dslv/DragSortListView;)I

    move-result v7

    invoke-static {v6, v7}, Lcom/mobeta/android/dslv/DragSortListView;->access$2900(Lcom/mobeta/android/dslv/DragSortListView;I)I

    move-result v6

    sub-int/2addr v5, v6

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "</FirstExpBlankHeight>\n"

    .line 3017
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3018
    iget-object v3, p0, Lcom/mobeta/android/dslv/DragSortListView$DragSortTracker;->mBuilder:Ljava/lang/StringBuilder;

    const-string v5, "    <SecondExpPos>"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/mobeta/android/dslv/DragSortListView$DragSortTracker;->this$0:Lcom/mobeta/android/dslv/DragSortListView;

    invoke-static {v5}, Lcom/mobeta/android/dslv/DragSortListView;->access$1400(Lcom/mobeta/android/dslv/DragSortListView;)I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "</SecondExpPos>\n"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3019
    iget-object v3, p0, Lcom/mobeta/android/dslv/DragSortListView$DragSortTracker;->mBuilder:Ljava/lang/StringBuilder;

    const-string v5, "    <SecondExpBlankHeight>"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/mobeta/android/dslv/DragSortListView$DragSortTracker;->this$0:Lcom/mobeta/android/dslv/DragSortListView;

    .line 3020
    invoke-static {v5}, Lcom/mobeta/android/dslv/DragSortListView;->access$1400(Lcom/mobeta/android/dslv/DragSortListView;)I

    move-result v6

    invoke-static {v5, v6}, Lcom/mobeta/android/dslv/DragSortListView;->access$2800(Lcom/mobeta/android/dslv/DragSortListView;I)I

    move-result v5

    iget-object v6, p0, Lcom/mobeta/android/dslv/DragSortListView$DragSortTracker;->this$0:Lcom/mobeta/android/dslv/DragSortListView;

    invoke-static {v6}, Lcom/mobeta/android/dslv/DragSortListView;->access$1400(Lcom/mobeta/android/dslv/DragSortListView;)I

    move-result v7

    invoke-static {v6, v7}, Lcom/mobeta/android/dslv/DragSortListView;->access$2900(Lcom/mobeta/android/dslv/DragSortListView;I)I

    move-result v6

    sub-int/2addr v5, v6

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "</SecondExpBlankHeight>\n"

    .line 3021
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3022
    iget-object v3, p0, Lcom/mobeta/android/dslv/DragSortListView$DragSortTracker;->mBuilder:Ljava/lang/StringBuilder;

    const-string v5, "    <SrcPos>"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/mobeta/android/dslv/DragSortListView$DragSortTracker;->this$0:Lcom/mobeta/android/dslv/DragSortListView;

    invoke-static {v5}, Lcom/mobeta/android/dslv/DragSortListView;->access$900(Lcom/mobeta/android/dslv/DragSortListView;)I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "</SrcPos>\n"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3023
    iget-object v3, p0, Lcom/mobeta/android/dslv/DragSortListView$DragSortTracker;->mBuilder:Ljava/lang/StringBuilder;

    const-string v5, "    <SrcHeight>"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/mobeta/android/dslv/DragSortListView$DragSortTracker;->this$0:Lcom/mobeta/android/dslv/DragSortListView;

    invoke-static {v5}, Lcom/mobeta/android/dslv/DragSortListView;->access$1100(Lcom/mobeta/android/dslv/DragSortListView;)I

    move-result v5

    iget-object v6, p0, Lcom/mobeta/android/dslv/DragSortListView$DragSortTracker;->this$0:Lcom/mobeta/android/dslv/DragSortListView;

    invoke-virtual {v6}, Landroid/widget/ListView;->getDividerHeight()I

    move-result v6

    add-int/2addr v5, v6

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "</SrcHeight>\n"

    .line 3024
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3025
    iget-object v3, p0, Lcom/mobeta/android/dslv/DragSortListView$DragSortTracker;->mBuilder:Ljava/lang/StringBuilder;

    const-string v5, "    <ViewHeight>"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/mobeta/android/dslv/DragSortListView$DragSortTracker;->this$0:Lcom/mobeta/android/dslv/DragSortListView;

    invoke-virtual {v5}, Landroid/widget/ListView;->getHeight()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "</ViewHeight>\n"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3026
    iget-object v3, p0, Lcom/mobeta/android/dslv/DragSortListView$DragSortTracker;->mBuilder:Ljava/lang/StringBuilder;

    const-string v5, "    <LastY>"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/mobeta/android/dslv/DragSortListView$DragSortTracker;->this$0:Lcom/mobeta/android/dslv/DragSortListView;

    invoke-static {v5}, Lcom/mobeta/android/dslv/DragSortListView;->access$3000(Lcom/mobeta/android/dslv/DragSortListView;)I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "</LastY>\n"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3027
    iget-object v3, p0, Lcom/mobeta/android/dslv/DragSortListView$DragSortTracker;->mBuilder:Ljava/lang/StringBuilder;

    const-string v5, "    <FloatY>"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/mobeta/android/dslv/DragSortListView$DragSortTracker;->this$0:Lcom/mobeta/android/dslv/DragSortListView;

    invoke-static {v5}, Lcom/mobeta/android/dslv/DragSortListView;->access$2000(Lcom/mobeta/android/dslv/DragSortListView;)I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "</FloatY>\n"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3028
    iget-object v3, p0, Lcom/mobeta/android/dslv/DragSortListView$DragSortTracker;->mBuilder:Ljava/lang/StringBuilder;

    const-string v5, "    <ShuffleEdges>"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x0

    :goto_3
    if-ge v3, v0, :cond_4

    .line 3030
    iget-object v5, p0, Lcom/mobeta/android/dslv/DragSortListView$DragSortTracker;->mBuilder:Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/mobeta/android/dslv/DragSortListView$DragSortTracker;->this$0:Lcom/mobeta/android/dslv/DragSortListView;

    add-int v7, v1, v3

    invoke-virtual {v6, v3}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getTop()I

    move-result v8

    invoke-static {v6, v7, v8}, Lcom/mobeta/android/dslv/DragSortListView;->access$3100(Lcom/mobeta/android/dslv/DragSortListView;II)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 3032
    :cond_4
    iget-object v0, p0, Lcom/mobeta/android/dslv/DragSortListView$DragSortTracker;->mBuilder:Ljava/lang/StringBuilder;

    const-string v1, "</ShuffleEdges>\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3034
    iget-object v0, p0, Lcom/mobeta/android/dslv/DragSortListView$DragSortTracker;->mBuilder:Ljava/lang/StringBuilder;

    const-string v1, "</DSLVState>\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3035
    iget v0, p0, Lcom/mobeta/android/dslv/DragSortListView$DragSortTracker;->mNumInBuffer:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/mobeta/android/dslv/DragSortListView$DragSortTracker;->mNumInBuffer:I

    const/16 v1, 0x3e8

    if-le v0, v1, :cond_5

    .line 3038
    invoke-virtual {p0}, Lcom/mobeta/android/dslv/DragSortListView$DragSortTracker;->flush()V

    .line 3039
    iput v2, p0, Lcom/mobeta/android/dslv/DragSortListView$DragSortTracker;->mNumInBuffer:I

    :cond_5
    return-void
.end method

.method public flush()V
    .locals 5

    .line 3044
    iget-boolean v0, p0, Lcom/mobeta/android/dslv/DragSortListView$DragSortTracker;->mTracking:Z

    if-nez v0, :cond_0

    return-void

    .line 3051
    :cond_0
    :try_start_0
    iget v0, p0, Lcom/mobeta/android/dslv/DragSortListView$DragSortTracker;->mNumFlushes:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    .line 3054
    :goto_0
    new-instance v3, Ljava/io/FileWriter;

    iget-object v4, p0, Lcom/mobeta/android/dslv/DragSortListView$DragSortTracker;->mFile:Ljava/io/File;

    invoke-direct {v3, v4, v0}, Ljava/io/FileWriter;-><init>(Ljava/io/File;Z)V

    .line 3056
    iget-object v0, p0, Lcom/mobeta/android/dslv/DragSortListView$DragSortTracker;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 3057
    iget-object v0, p0, Lcom/mobeta/android/dslv/DragSortListView$DragSortTracker;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    invoke-virtual {v0, v1, v4}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 3059
    invoke-virtual {v3}, Ljava/io/FileWriter;->flush()V

    .line 3060
    invoke-virtual {v3}, Ljava/io/FileWriter;->close()V

    .line 3062
    iget v0, p0, Lcom/mobeta/android/dslv/DragSortListView$DragSortTracker;->mNumFlushes:I

    add-int/2addr v0, v2

    iput v0, p0, Lcom/mobeta/android/dslv/DragSortListView$DragSortTracker;->mNumFlushes:I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public startTracking()V
    .locals 2

    .line 2984
    iget-object v0, p0, Lcom/mobeta/android/dslv/DragSortListView$DragSortTracker;->mBuilder:Ljava/lang/StringBuilder;

    const-string v1, "<DSLVStates>\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    .line 2985
    iput v0, p0, Lcom/mobeta/android/dslv/DragSortListView$DragSortTracker;->mNumFlushes:I

    const/4 v0, 0x1

    .line 2986
    iput-boolean v0, p0, Lcom/mobeta/android/dslv/DragSortListView$DragSortTracker;->mTracking:Z

    return-void
.end method

.method public stopTracking()V
    .locals 2

    .line 3069
    iget-boolean v0, p0, Lcom/mobeta/android/dslv/DragSortListView$DragSortTracker;->mTracking:Z

    if-eqz v0, :cond_0

    .line 3070
    iget-object v0, p0, Lcom/mobeta/android/dslv/DragSortListView$DragSortTracker;->mBuilder:Ljava/lang/StringBuilder;

    const-string v1, "</DSLVStates>\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3071
    invoke-virtual {p0}, Lcom/mobeta/android/dslv/DragSortListView$DragSortTracker;->flush()V

    const/4 v0, 0x0

    .line 3072
    iput-boolean v0, p0, Lcom/mobeta/android/dslv/DragSortListView$DragSortTracker;->mTracking:Z

    :cond_0
    return-void
.end method
