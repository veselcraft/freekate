.class public Lcom/perm/kate/StatsActivity;
.super Lcom/perm/kate/BaseActivity;
.source "StatsActivity.java"


# instance fields
.field private age_chart_view:Lcom/perm/kate/chartview/ChartView;

.field private api_df:Ljava/text/SimpleDateFormat;

.field private btn_date_from:Landroid/widget/Button;

.field private btn_date_to:Landroid/widget/Button;

.field private callback:Lcom/perm/kate/session/Callback;

.field private color_chart_line1:I

.field private color_chart_line2:I

.field private color_chart_line3:I

.field private color_chart_line4:I

.field private color_chart_line5:I

.field private color_chart_line6:I

.field private color_chart_line7:I

.field private color_chart_line8:I

.field private date_from:Ljava/util/Date;

.field private date_from_OnClickListener:Landroid/view/View$OnClickListener;

.field private date_from_str_for_api:Ljava/lang/String;

.field private date_to:Ljava/util/Date;

.field private date_to_OnClickListener:Landroid/view/View$OnClickListener;

.field private date_to_str_for_api:Ljava/lang/String;

.field private display_df:Ljava/text/SimpleDateFormat;

.field private fl_button_bg:Landroid/widget/FrameLayout;

.field private fl_button_bg2:Landroid/widget/FrameLayout;

.field private group_id:Ljava/lang/Long;

.field private label_df:Ljava/text/SimpleDateFormat;

.field private lineWidth:I

.field private ll_age:Landroid/widget/LinearLayout;

.field private ll_sex:Landroid/widget/LinearLayout;

.field private ll_visitors_views:Landroid/widget/LinearLayout;

.field private pointRadius:I

.field private sex_chart_view:Lcom/perm/kate/chartview/ChartView;

.field private tv_info:Landroid/widget/TextView;

.field private tv_loading_data:Landroid/widget/TextView;

.field private visitors_views_chart_view:Lcom/perm/kate/chartview/ChartView;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/perm/kate/BaseActivity;-><init>()V

    .line 44
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/perm/kate/StatsActivity;->group_id:Ljava/lang/Long;

    .line 49
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "d MMMM yyyy"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/perm/kate/StatsActivity;->display_df:Ljava/text/SimpleDateFormat;

    .line 50
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/perm/kate/StatsActivity;->api_df:Ljava/text/SimpleDateFormat;

    .line 51
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "d MMMM"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/perm/kate/StatsActivity;->label_df:Ljava/text/SimpleDateFormat;

    .line 91
    new-instance v0, Lcom/perm/kate/StatsActivity$1;

    invoke-direct {v0, p0}, Lcom/perm/kate/StatsActivity$1;-><init>(Lcom/perm/kate/StatsActivity;)V

    iput-object v0, p0, Lcom/perm/kate/StatsActivity;->date_from_OnClickListener:Landroid/view/View$OnClickListener;

    .line 115
    new-instance v0, Lcom/perm/kate/StatsActivity$2;

    invoke-direct {v0, p0}, Lcom/perm/kate/StatsActivity$2;-><init>(Lcom/perm/kate/StatsActivity;)V

    iput-object v0, p0, Lcom/perm/kate/StatsActivity;->date_to_OnClickListener:Landroid/view/View$OnClickListener;

    .line 200
    new-instance v0, Lcom/perm/kate/StatsActivity$4;

    invoke-direct {v0, p0, p0}, Lcom/perm/kate/StatsActivity$4;-><init>(Lcom/perm/kate/StatsActivity;Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/perm/kate/StatsActivity;->callback:Lcom/perm/kate/session/Callback;

    return-void
.end method

.method static synthetic access$000(Lcom/perm/kate/StatsActivity;)Ljava/util/Date;
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/StatsActivity;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/perm/kate/StatsActivity;->date_from:Ljava/util/Date;

    return-object v0
.end method

.method static synthetic access$100(Lcom/perm/kate/StatsActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/StatsActivity;

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/perm/kate/StatsActivity;->updateApiDateStrings()V

    return-void
.end method

.method static synthetic access$200(Lcom/perm/kate/StatsActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/StatsActivity;

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/perm/kate/StatsActivity;->updateButtonsLabels()V

    return-void
.end method

.method static synthetic access$300(Lcom/perm/kate/StatsActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/StatsActivity;

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/perm/kate/StatsActivity;->refreshInThread()V

    return-void
.end method

.method static synthetic access$400(Lcom/perm/kate/StatsActivity;)Ljava/util/Date;
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/StatsActivity;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/perm/kate/StatsActivity;->date_to:Ljava/util/Date;

    return-object v0
.end method

.method static synthetic access$500(Lcom/perm/kate/StatsActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/StatsActivity;

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/perm/kate/StatsActivity;->refresh()V

    return-void
.end method

.method static synthetic access$600(Lcom/perm/kate/StatsActivity;Ljava/util/ArrayList;)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/StatsActivity;
    .param p1, "x1"    # Ljava/util/ArrayList;

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/perm/kate/StatsActivity;->diplayDataInUiThread(Ljava/util/ArrayList;)V

    return-void
.end method

.method static synthetic access$700(Lcom/perm/kate/StatsActivity;Ljava/util/ArrayList;)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/StatsActivity;
    .param p1, "x1"    # Ljava/util/ArrayList;

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/perm/kate/StatsActivity;->diplayData(Ljava/util/ArrayList;)V

    return-void
.end method

.method private diplayData(Ljava/util/ArrayList;)V
    .locals 46
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/perm/kate/api/PeriodStats;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 240
    .local p1, "stats":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/perm/kate/api/PeriodStats;>;"
    if-eqz p1, :cond_0

    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v40

    if-nez v40, :cond_1

    .line 241
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/perm/kate/StatsActivity;->tv_loading_data:Landroid/widget/TextView;

    move-object/from16 v40, v0

    const/16 v41, 0x8

    invoke-virtual/range {v40 .. v41}, Landroid/widget/TextView;->setVisibility(I)V

    .line 242
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/perm/kate/StatsActivity;->fl_button_bg:Landroid/widget/FrameLayout;

    move-object/from16 v40, v0

    const/16 v41, 0x0

    invoke-virtual/range {v40 .. v41}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 243
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/perm/kate/StatsActivity;->fl_button_bg2:Landroid/widget/FrameLayout;

    move-object/from16 v40, v0

    const/16 v41, 0x0

    invoke-virtual/range {v40 .. v41}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 244
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/perm/kate/StatsActivity;->tv_info:Landroid/widget/TextView;

    move-object/from16 v40, v0

    const/16 v41, 0x0

    invoke-virtual/range {v40 .. v41}, Landroid/widget/TextView;->setVisibility(I)V

    .line 245
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/perm/kate/StatsActivity;->tv_info:Landroid/widget/TextView;

    move-object/from16 v40, v0

    const v41, 0x7f0701f5

    invoke-virtual/range {v40 .. v41}, Landroid/widget/TextView;->setText(I)V

    .line 536
    :goto_0
    return-void

    .line 248
    :cond_1
    const/16 v40, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v40

    invoke-direct {v0, v1}, Lcom/perm/kate/StatsActivity;->showHideFields(Z)V

    .line 249
    invoke-direct/range {p0 .. p0}, Lcom/perm/kate/StatsActivity;->updateButtonsLabels()V

    .line 251
    invoke-static/range {p1 .. p1}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 255
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v24

    .line 256
    .local v24, "len":I
    const/16 v40, 0x40

    move/from16 v0, v24

    move/from16 v1, v40

    if-ge v0, v1, :cond_2

    const/16 v19, 0x1

    .line 260
    .local v19, "drawPoints":Z
    :goto_1
    new-instance v36, Lcom/perm/kate/chartview/LinearSeries;

    invoke-direct/range {v36 .. v36}, Lcom/perm/kate/chartview/LinearSeries;-><init>()V

    .line 261
    .local v36, "views_series":Lcom/perm/kate/chartview/LinearSeries;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/perm/kate/StatsActivity;->color_chart_line1:I

    move/from16 v40, v0

    move-object/from16 v0, v36

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Lcom/perm/kate/chartview/LinearSeries;->setLineColor(I)V

    .line 262
    move-object/from16 v0, p0

    iget v0, v0, Lcom/perm/kate/StatsActivity;->lineWidth:I

    move/from16 v40, v0

    move/from16 v0, v40

    int-to-float v0, v0

    move/from16 v40, v0

    move-object/from16 v0, v36

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Lcom/perm/kate/chartview/LinearSeries;->setLineWidth(F)V

    .line 263
    move-object/from16 v0, p0

    iget v0, v0, Lcom/perm/kate/StatsActivity;->pointRadius:I

    move/from16 v40, v0

    move/from16 v0, v40

    int-to-float v0, v0

    move/from16 v40, v0

    move-object/from16 v0, v36

    move/from16 v1, v19

    move/from16 v2, v40

    invoke-virtual {v0, v1, v2}, Lcom/perm/kate/chartview/LinearSeries;->setDrawPoint(ZF)V

    .line 265
    new-instance v37, Lcom/perm/kate/chartview/LinearSeries;

    invoke-direct/range {v37 .. v37}, Lcom/perm/kate/chartview/LinearSeries;-><init>()V

    .line 266
    .local v37, "visitors_series":Lcom/perm/kate/chartview/LinearSeries;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/perm/kate/StatsActivity;->color_chart_line2:I

    move/from16 v40, v0

    move-object/from16 v0, v37

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Lcom/perm/kate/chartview/LinearSeries;->setLineColor(I)V

    .line 267
    move-object/from16 v0, p0

    iget v0, v0, Lcom/perm/kate/StatsActivity;->lineWidth:I

    move/from16 v40, v0

    move/from16 v0, v40

    int-to-float v0, v0

    move/from16 v40, v0

    move-object/from16 v0, v37

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Lcom/perm/kate/chartview/LinearSeries;->setLineWidth(F)V

    .line 268
    move-object/from16 v0, p0

    iget v0, v0, Lcom/perm/kate/StatsActivity;->pointRadius:I

    move/from16 v40, v0

    move/from16 v0, v40

    int-to-float v0, v0

    move/from16 v40, v0

    move-object/from16 v0, v37

    move/from16 v1, v19

    move/from16 v2, v40

    invoke-virtual {v0, v1, v2}, Lcom/perm/kate/chartview/LinearSeries;->setDrawPoint(ZF)V

    .line 271
    const/16 v35, 0x9

    .line 272
    .local v35, "vertial_count":I
    const/16 v40, 0x9

    move/from16 v0, v24

    move/from16 v1, v40

    if-gt v0, v1, :cond_3

    .line 273
    move/from16 v35, v24

    .line 281
    :goto_2
    add-int/lit8 v35, v35, -0x2

    .line 283
    new-instance v18, Ljava/util/ArrayList;

    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    .line 284
    .local v18, "days_labels":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/16 v23, 0x0

    .local v23, "i":I
    :goto_3
    move/from16 v0, v23

    move/from16 v1, v24

    if-ge v0, v1, :cond_5

    .line 285
    move-object/from16 v0, p1

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Lcom/perm/kate/api/PeriodStats;

    .line 286
    .local v30, "ps":Lcom/perm/kate/api/PeriodStats;
    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/perm/kate/api/PeriodStats;->day:Ljava/lang/String;

    move-object/from16 v40, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v40

    invoke-direct {v0, v1}, Lcom/perm/kate/StatsActivity;->parseDate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v40

    move-object/from16 v0, v18

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 284
    add-int/lit8 v23, v23, 0x1

    goto :goto_3

    .line 256
    .end local v18    # "days_labels":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v19    # "drawPoints":Z
    .end local v23    # "i":I
    .end local v30    # "ps":Lcom/perm/kate/api/PeriodStats;
    .end local v35    # "vertial_count":I
    .end local v36    # "views_series":Lcom/perm/kate/chartview/LinearSeries;
    .end local v37    # "visitors_series":Lcom/perm/kate/chartview/LinearSeries;
    :cond_2
    const/16 v19, 0x0

    goto/16 :goto_1

    .line 274
    .restart local v19    # "drawPoints":Z
    .restart local v35    # "vertial_count":I
    .restart local v36    # "views_series":Lcom/perm/kate/chartview/LinearSeries;
    .restart local v37    # "visitors_series":Lcom/perm/kate/chartview/LinearSeries;
    :cond_3
    const/16 v40, 0x1f

    move/from16 v0, v24

    move/from16 v1, v40

    if-ge v0, v1, :cond_4

    .line 275
    move/from16 v0, v24

    int-to-double v0, v0

    move-wide/from16 v40, v0

    const-wide v42, 0x4006666666666666L    # 2.8

    div-double v40, v40, v42

    invoke-static/range {v40 .. v41}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v40

    move-wide/from16 v0, v40

    double-to-int v0, v0

    move/from16 v35, v0

    goto :goto_2

    .line 277
    :cond_4
    move/from16 v0, v24

    int-to-double v0, v0

    move-wide/from16 v40, v0

    div-int/lit8 v42, v24, 0xa

    move/from16 v0, v42

    int-to-double v0, v0

    move-wide/from16 v42, v0

    div-double v40, v40, v42

    invoke-static/range {v40 .. v41}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v40

    move-wide/from16 v0, v40

    double-to-int v0, v0

    move/from16 v35, v0

    goto :goto_2

    .line 289
    .restart local v18    # "days_labels":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v23    # "i":I
    :cond_5
    const/16 v27, 0x0

    .line 290
    .local v27, "max":I
    const-wide/16 v38, 0x0

    .line 291
    .local v38, "x":D
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v40

    :goto_4
    invoke-interface/range {v40 .. v40}, Ljava/util/Iterator;->hasNext()Z

    move-result v41

    if-eqz v41, :cond_8

    invoke-interface/range {v40 .. v40}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Lcom/perm/kate/api/PeriodStats;

    .line 292
    .restart local v30    # "ps":Lcom/perm/kate/api/PeriodStats;
    new-instance v41, Lcom/perm/kate/chartview/LinearSeries$LinearPoint;

    move-object/from16 v0, v30

    iget v0, v0, Lcom/perm/kate/api/PeriodStats;->views:I

    move/from16 v42, v0

    move/from16 v0, v42

    int-to-double v0, v0

    move-wide/from16 v42, v0

    move-object/from16 v0, v41

    move-wide/from16 v1, v38

    move-wide/from16 v3, v42

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/perm/kate/chartview/LinearSeries$LinearPoint;-><init>(DD)V

    move-object/from16 v0, v36

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Lcom/perm/kate/chartview/LinearSeries;->addPoint(Lcom/perm/kate/chartview/AbstractSeries$AbstractPoint;)V

    .line 293
    new-instance v41, Lcom/perm/kate/chartview/LinearSeries$LinearPoint;

    move-object/from16 v0, v30

    iget v0, v0, Lcom/perm/kate/api/PeriodStats;->visitors:I

    move/from16 v42, v0

    move/from16 v0, v42

    int-to-double v0, v0

    move-wide/from16 v42, v0

    move-object/from16 v0, v41

    move-wide/from16 v1, v38

    move-wide/from16 v3, v42

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/perm/kate/chartview/LinearSeries$LinearPoint;-><init>(DD)V

    move-object/from16 v0, v37

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Lcom/perm/kate/chartview/LinearSeries;->addPoint(Lcom/perm/kate/chartview/AbstractSeries$AbstractPoint;)V

    .line 295
    move-object/from16 v0, v30

    iget v0, v0, Lcom/perm/kate/api/PeriodStats;->views:I

    move/from16 v41, v0

    move/from16 v0, v41

    move/from16 v1, v27

    if-le v0, v1, :cond_6

    .line 296
    move-object/from16 v0, v30

    iget v0, v0, Lcom/perm/kate/api/PeriodStats;->views:I

    move/from16 v27, v0

    .line 297
    :cond_6
    move-object/from16 v0, v30

    iget v0, v0, Lcom/perm/kate/api/PeriodStats;->visitors:I

    move/from16 v41, v0

    move/from16 v0, v41

    move/from16 v1, v27

    if-le v0, v1, :cond_7

    .line 298
    move-object/from16 v0, v30

    iget v0, v0, Lcom/perm/kate/api/PeriodStats;->visitors:I

    move/from16 v27, v0

    .line 300
    :cond_7
    const-wide/high16 v42, 0x3ff0000000000000L    # 1.0

    add-double v38, v38, v42

    .line 301
    goto :goto_4

    .line 304
    .end local v30    # "ps":Lcom/perm/kate/api/PeriodStats;
    :cond_8
    const/16 v22, 0x5

    .line 305
    .local v22, "horizontal_count":I
    const/16 v40, 0x2

    move/from16 v0, v27

    move/from16 v1, v40

    if-ge v0, v1, :cond_b

    .line 306
    const/16 v22, 0x0

    .line 312
    :cond_9
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/perm/kate/StatsActivity;->visitors_views_chart_view:Lcom/perm/kate/chartview/ChartView;

    move-object/from16 v40, v0

    invoke-virtual/range {v40 .. v40}, Lcom/perm/kate/chartview/ChartView;->clearSeries()V

    .line 313
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/perm/kate/StatsActivity;->visitors_views_chart_view:Lcom/perm/kate/chartview/ChartView;

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/perm/kate/chartview/ChartView;->setGridLinesVertical(I)V

    .line 314
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/perm/kate/StatsActivity;->visitors_views_chart_view:Lcom/perm/kate/chartview/ChartView;

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Lcom/perm/kate/chartview/ChartView;->setGridLinesHorizontal(I)V

    .line 317
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/perm/kate/StatsActivity;->visitors_views_chart_view:Lcom/perm/kate/chartview/ChartView;

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Lcom/perm/kate/chartview/ChartView;->addSeries(Lcom/perm/kate/chartview/AbstractSeries;)V

    .line 318
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/perm/kate/StatsActivity;->visitors_views_chart_view:Lcom/perm/kate/chartview/ChartView;

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/perm/kate/chartview/ChartView;->addSeries(Lcom/perm/kate/chartview/AbstractSeries;)V

    .line 319
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/perm/kate/StatsActivity;->visitors_views_chart_view:Lcom/perm/kate/chartview/ChartView;

    move-object/from16 v40, v0

    new-instance v41, Lcom/perm/kate/ValueLabelAdapter;

    sget-object v42, Lcom/perm/kate/ValueLabelAdapter$LabelOrientation;->VERTICAL:Lcom/perm/kate/ValueLabelAdapter$LabelOrientation;

    move-object/from16 v0, v41

    move-object/from16 v1, p0

    move-object/from16 v2, v42

    invoke-direct {v0, v1, v2}, Lcom/perm/kate/ValueLabelAdapter;-><init>(Landroid/content/Context;Lcom/perm/kate/ValueLabelAdapter$LabelOrientation;)V

    invoke-virtual/range {v40 .. v41}, Lcom/perm/kate/chartview/ChartView;->setLeftLabelAdapter(Lcom/perm/kate/chartview/LabelAdapter;)V

    .line 320
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/perm/kate/StatsActivity;->visitors_views_chart_view:Lcom/perm/kate/chartview/ChartView;

    move-object/from16 v40, v0

    new-instance v41, Lcom/perm/kate/ValueLabelAdapter;

    sget-object v42, Lcom/perm/kate/ValueLabelAdapter$LabelOrientation;->HORIZONTAL:Lcom/perm/kate/ValueLabelAdapter$LabelOrientation;

    const/16 v43, 0x1

    move-object/from16 v0, v41

    move-object/from16 v1, p0

    move-object/from16 v2, v42

    move/from16 v3, v43

    invoke-direct {v0, v1, v2, v3}, Lcom/perm/kate/ValueLabelAdapter;-><init>(Landroid/content/Context;Lcom/perm/kate/ValueLabelAdapter$LabelOrientation;Z)V

    move-object/from16 v0, v40

    move-object/from16 v1, v41

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lcom/perm/kate/chartview/ChartView;->setBottomLabelAdapter(Lcom/perm/kate/chartview/LabelAdapter;Ljava/util/ArrayList;)V

    .line 323
    new-instance v26, Lcom/perm/kate/chartview/LinearSeries;

    invoke-direct/range {v26 .. v26}, Lcom/perm/kate/chartview/LinearSeries;-><init>()V

    .line 324
    .local v26, "m_sex_series":Lcom/perm/kate/chartview/LinearSeries;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/perm/kate/StatsActivity;->color_chart_line1:I

    move/from16 v40, v0

    move-object/from16 v0, v26

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Lcom/perm/kate/chartview/LinearSeries;->setLineColor(I)V

    .line 325
    move-object/from16 v0, p0

    iget v0, v0, Lcom/perm/kate/StatsActivity;->lineWidth:I

    move/from16 v40, v0

    move/from16 v0, v40

    int-to-float v0, v0

    move/from16 v40, v0

    move-object/from16 v0, v26

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Lcom/perm/kate/chartview/LinearSeries;->setLineWidth(F)V

    .line 326
    move-object/from16 v0, p0

    iget v0, v0, Lcom/perm/kate/StatsActivity;->pointRadius:I

    move/from16 v40, v0

    move/from16 v0, v40

    int-to-float v0, v0

    move/from16 v40, v0

    move-object/from16 v0, v26

    move/from16 v1, v19

    move/from16 v2, v40

    invoke-virtual {v0, v1, v2}, Lcom/perm/kate/chartview/LinearSeries;->setDrawPoint(ZF)V

    .line 327
    new-instance v21, Lcom/perm/kate/chartview/LinearSeries;

    invoke-direct/range {v21 .. v21}, Lcom/perm/kate/chartview/LinearSeries;-><init>()V

    .line 328
    .local v21, "f_sex_series":Lcom/perm/kate/chartview/LinearSeries;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/perm/kate/StatsActivity;->color_chart_line2:I

    move/from16 v40, v0

    move-object/from16 v0, v21

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Lcom/perm/kate/chartview/LinearSeries;->setLineColor(I)V

    .line 329
    move-object/from16 v0, p0

    iget v0, v0, Lcom/perm/kate/StatsActivity;->lineWidth:I

    move/from16 v40, v0

    move/from16 v0, v40

    int-to-float v0, v0

    move/from16 v40, v0

    move-object/from16 v0, v21

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Lcom/perm/kate/chartview/LinearSeries;->setLineWidth(F)V

    .line 330
    move-object/from16 v0, p0

    iget v0, v0, Lcom/perm/kate/StatsActivity;->pointRadius:I

    move/from16 v40, v0

    move/from16 v0, v40

    int-to-float v0, v0

    move/from16 v40, v0

    move-object/from16 v0, v21

    move/from16 v1, v19

    move/from16 v2, v40

    invoke-virtual {v0, v1, v2}, Lcom/perm/kate/chartview/LinearSeries;->setDrawPoint(ZF)V

    .line 332
    const/16 v27, 0x0

    .line 333
    const-wide/16 v38, 0x0

    .line 336
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v41

    :goto_6
    invoke-interface/range {v41 .. v41}, Ljava/util/Iterator;->hasNext()Z

    move-result v40

    if-eqz v40, :cond_13

    invoke-interface/range {v41 .. v41}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Lcom/perm/kate/api/PeriodStats;

    .line 337
    .restart local v30    # "ps":Lcom/perm/kate/api/PeriodStats;
    const/16 v25, -0x1

    .line 338
    .local v25, "m_sex_index":I
    const/16 v20, -0x1

    .line 339
    .local v20, "f_sex_index":I
    const/16 v34, 0x0

    .line 340
    .local v34, "v":Ljava/lang/String;
    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/perm/kate/api/PeriodStats;->sex:Ljava/util/ArrayList;

    move-object/from16 v40, v0

    if-eqz v40, :cond_e

    .line 341
    const/16 v23, 0x0

    :goto_7
    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/perm/kate/api/PeriodStats;->sex:Ljava/util/ArrayList;

    move-object/from16 v40, v0

    invoke-virtual/range {v40 .. v40}, Ljava/util/ArrayList;->size()I

    move-result v40

    move/from16 v0, v23

    move/from16 v1, v40

    if-ge v0, v1, :cond_e

    .line 342
    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/perm/kate/api/PeriodStats;->sex:Ljava/util/ArrayList;

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v40

    check-cast v40, Lcom/perm/kate/api/StatsValue;

    move-object/from16 v0, v40

    iget-object v0, v0, Lcom/perm/kate/api/StatsValue;->value:Ljava/lang/String;

    move-object/from16 v34, v0

    .line 343
    const-string v40, "m"

    move-object/from16 v0, v40

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v40

    if-eqz v40, :cond_d

    .line 344
    move/from16 v25, v23

    .line 341
    :cond_a
    :goto_8
    add-int/lit8 v23, v23, 0x1

    goto :goto_7

    .line 307
    .end local v20    # "f_sex_index":I
    .end local v21    # "f_sex_series":Lcom/perm/kate/chartview/LinearSeries;
    .end local v25    # "m_sex_index":I
    .end local v26    # "m_sex_series":Lcom/perm/kate/chartview/LinearSeries;
    .end local v30    # "ps":Lcom/perm/kate/api/PeriodStats;
    .end local v34    # "v":Ljava/lang/String;
    :cond_b
    const/16 v40, 0x7

    move/from16 v0, v27

    move/from16 v1, v40

    if-ge v0, v1, :cond_c

    .line 308
    add-int/lit8 v22, v27, -0x1

    goto/16 :goto_5

    .line 309
    :cond_c
    const/16 v40, 0xe

    move/from16 v0, v27

    move/from16 v1, v40

    if-ge v0, v1, :cond_9

    .line 310
    move/from16 v0, v27

    int-to-double v0, v0

    move-wide/from16 v40, v0

    const-wide v42, 0x4006666666666666L    # 2.8

    div-double v40, v40, v42

    invoke-static/range {v40 .. v41}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v40

    move-wide/from16 v0, v40

    double-to-int v0, v0

    move/from16 v22, v0

    goto/16 :goto_5

    .line 345
    .restart local v20    # "f_sex_index":I
    .restart local v21    # "f_sex_series":Lcom/perm/kate/chartview/LinearSeries;
    .restart local v25    # "m_sex_index":I
    .restart local v26    # "m_sex_series":Lcom/perm/kate/chartview/LinearSeries;
    .restart local v30    # "ps":Lcom/perm/kate/api/PeriodStats;
    .restart local v34    # "v":Ljava/lang/String;
    :cond_d
    const-string v40, "f"

    move-object/from16 v0, v40

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v40

    if-eqz v40, :cond_a

    .line 346
    move/from16 v20, v23

    goto :goto_8

    .line 349
    :cond_e
    const/16 v40, -0x1

    move/from16 v0, v25

    move/from16 v1, v40

    if-le v0, v1, :cond_11

    .line 350
    new-instance v42, Lcom/perm/kate/chartview/LinearSeries$LinearPoint;

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/perm/kate/api/PeriodStats;->sex:Ljava/util/ArrayList;

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v40

    check-cast v40, Lcom/perm/kate/api/StatsValue;

    move-object/from16 v0, v40

    iget v0, v0, Lcom/perm/kate/api/StatsValue;->visitors:I

    move/from16 v40, v0

    move/from16 v0, v40

    int-to-double v0, v0

    move-wide/from16 v44, v0

    move-object/from16 v0, v42

    move-wide/from16 v1, v38

    move-wide/from16 v3, v44

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/perm/kate/chartview/LinearSeries$LinearPoint;-><init>(DD)V

    move-object/from16 v0, v26

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Lcom/perm/kate/chartview/LinearSeries;->addPoint(Lcom/perm/kate/chartview/AbstractSeries$AbstractPoint;)V

    .line 351
    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/perm/kate/api/PeriodStats;->sex:Ljava/util/ArrayList;

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v40

    check-cast v40, Lcom/perm/kate/api/StatsValue;

    move-object/from16 v0, v40

    iget v0, v0, Lcom/perm/kate/api/StatsValue;->visitors:I

    move/from16 v40, v0

    move/from16 v0, v40

    move/from16 v1, v27

    if-le v0, v1, :cond_f

    .line 352
    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/perm/kate/api/PeriodStats;->sex:Ljava/util/ArrayList;

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v40

    check-cast v40, Lcom/perm/kate/api/StatsValue;

    move-object/from16 v0, v40

    iget v0, v0, Lcom/perm/kate/api/StatsValue;->visitors:I

    move/from16 v27, v0

    .line 355
    :cond_f
    :goto_9
    const/16 v40, -0x1

    move/from16 v0, v20

    move/from16 v1, v40

    if-le v0, v1, :cond_12

    .line 356
    new-instance v42, Lcom/perm/kate/chartview/LinearSeries$LinearPoint;

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/perm/kate/api/PeriodStats;->sex:Ljava/util/ArrayList;

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v40

    check-cast v40, Lcom/perm/kate/api/StatsValue;

    move-object/from16 v0, v40

    iget v0, v0, Lcom/perm/kate/api/StatsValue;->visitors:I

    move/from16 v40, v0

    move/from16 v0, v40

    int-to-double v0, v0

    move-wide/from16 v44, v0

    move-object/from16 v0, v42

    move-wide/from16 v1, v38

    move-wide/from16 v3, v44

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/perm/kate/chartview/LinearSeries$LinearPoint;-><init>(DD)V

    move-object/from16 v0, v21

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Lcom/perm/kate/chartview/LinearSeries;->addPoint(Lcom/perm/kate/chartview/AbstractSeries$AbstractPoint;)V

    .line 357
    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/perm/kate/api/PeriodStats;->sex:Ljava/util/ArrayList;

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v40

    check-cast v40, Lcom/perm/kate/api/StatsValue;

    move-object/from16 v0, v40

    iget v0, v0, Lcom/perm/kate/api/StatsValue;->visitors:I

    move/from16 v40, v0

    move/from16 v0, v40

    move/from16 v1, v27

    if-le v0, v1, :cond_10

    .line 358
    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/perm/kate/api/PeriodStats;->sex:Ljava/util/ArrayList;

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v40

    check-cast v40, Lcom/perm/kate/api/StatsValue;

    move-object/from16 v0, v40

    iget v0, v0, Lcom/perm/kate/api/StatsValue;->visitors:I

    move/from16 v27, v0

    .line 361
    :cond_10
    :goto_a
    const-wide/high16 v42, 0x3ff0000000000000L    # 1.0

    add-double v38, v38, v42

    .line 362
    goto/16 :goto_6

    .line 354
    :cond_11
    new-instance v40, Lcom/perm/kate/chartview/LinearSeries$LinearPoint;

    const-wide/16 v42, 0x0

    move-object/from16 v0, v40

    move-wide/from16 v1, v38

    move-wide/from16 v3, v42

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/perm/kate/chartview/LinearSeries$LinearPoint;-><init>(DD)V

    move-object/from16 v0, v26

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Lcom/perm/kate/chartview/LinearSeries;->addPoint(Lcom/perm/kate/chartview/AbstractSeries$AbstractPoint;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_9

    .line 532
    .end local v18    # "days_labels":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v19    # "drawPoints":Z
    .end local v20    # "f_sex_index":I
    .end local v21    # "f_sex_series":Lcom/perm/kate/chartview/LinearSeries;
    .end local v22    # "horizontal_count":I
    .end local v23    # "i":I
    .end local v24    # "len":I
    .end local v25    # "m_sex_index":I
    .end local v26    # "m_sex_series":Lcom/perm/kate/chartview/LinearSeries;
    .end local v27    # "max":I
    .end local v30    # "ps":Lcom/perm/kate/api/PeriodStats;
    .end local v34    # "v":Ljava/lang/String;
    .end local v35    # "vertial_count":I
    .end local v36    # "views_series":Lcom/perm/kate/chartview/LinearSeries;
    .end local v37    # "visitors_series":Lcom/perm/kate/chartview/LinearSeries;
    .end local v38    # "x":D
    :catch_0
    move-exception v31

    .line 533
    .local v31, "th":Ljava/lang/Throwable;
    invoke-virtual/range {v31 .. v31}, Ljava/lang/Throwable;->printStackTrace()V

    .line 534
    invoke-static/range {v31 .. v31}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 360
    .end local v31    # "th":Ljava/lang/Throwable;
    .restart local v18    # "days_labels":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v19    # "drawPoints":Z
    .restart local v20    # "f_sex_index":I
    .restart local v21    # "f_sex_series":Lcom/perm/kate/chartview/LinearSeries;
    .restart local v22    # "horizontal_count":I
    .restart local v23    # "i":I
    .restart local v24    # "len":I
    .restart local v25    # "m_sex_index":I
    .restart local v26    # "m_sex_series":Lcom/perm/kate/chartview/LinearSeries;
    .restart local v27    # "max":I
    .restart local v30    # "ps":Lcom/perm/kate/api/PeriodStats;
    .restart local v34    # "v":Ljava/lang/String;
    .restart local v35    # "vertial_count":I
    .restart local v36    # "views_series":Lcom/perm/kate/chartview/LinearSeries;
    .restart local v37    # "visitors_series":Lcom/perm/kate/chartview/LinearSeries;
    .restart local v38    # "x":D
    :cond_12
    :try_start_1
    new-instance v40, Lcom/perm/kate/chartview/LinearSeries$LinearPoint;

    const-wide/16 v42, 0x0

    move-object/from16 v0, v40

    move-wide/from16 v1, v38

    move-wide/from16 v3, v42

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/perm/kate/chartview/LinearSeries$LinearPoint;-><init>(DD)V

    move-object/from16 v0, v21

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Lcom/perm/kate/chartview/LinearSeries;->addPoint(Lcom/perm/kate/chartview/AbstractSeries$AbstractPoint;)V

    goto :goto_a

    .line 365
    .end local v20    # "f_sex_index":I
    .end local v25    # "m_sex_index":I
    .end local v30    # "ps":Lcom/perm/kate/api/PeriodStats;
    .end local v34    # "v":Ljava/lang/String;
    :cond_13
    const/16 v22, 0x5

    .line 366
    const/16 v40, 0x2

    move/from16 v0, v27

    move/from16 v1, v40

    if-ge v0, v1, :cond_16

    .line 367
    const/16 v22, 0x0

    .line 372
    :cond_14
    :goto_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/perm/kate/StatsActivity;->sex_chart_view:Lcom/perm/kate/chartview/ChartView;

    move-object/from16 v40, v0

    invoke-virtual/range {v40 .. v40}, Lcom/perm/kate/chartview/ChartView;->clearSeries()V

    .line 373
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/perm/kate/StatsActivity;->sex_chart_view:Lcom/perm/kate/chartview/ChartView;

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/perm/kate/chartview/ChartView;->setGridLinesVertical(I)V

    .line 374
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/perm/kate/StatsActivity;->sex_chart_view:Lcom/perm/kate/chartview/ChartView;

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Lcom/perm/kate/chartview/ChartView;->setGridLinesHorizontal(I)V

    .line 376
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/perm/kate/StatsActivity;->sex_chart_view:Lcom/perm/kate/chartview/ChartView;

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/perm/kate/chartview/ChartView;->addSeries(Lcom/perm/kate/chartview/AbstractSeries;)V

    .line 377
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/perm/kate/StatsActivity;->sex_chart_view:Lcom/perm/kate/chartview/ChartView;

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/perm/kate/chartview/ChartView;->addSeries(Lcom/perm/kate/chartview/AbstractSeries;)V

    .line 378
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/perm/kate/StatsActivity;->sex_chart_view:Lcom/perm/kate/chartview/ChartView;

    move-object/from16 v40, v0

    new-instance v41, Lcom/perm/kate/ValueLabelAdapter;

    sget-object v42, Lcom/perm/kate/ValueLabelAdapter$LabelOrientation;->VERTICAL:Lcom/perm/kate/ValueLabelAdapter$LabelOrientation;

    move-object/from16 v0, v41

    move-object/from16 v1, p0

    move-object/from16 v2, v42

    invoke-direct {v0, v1, v2}, Lcom/perm/kate/ValueLabelAdapter;-><init>(Landroid/content/Context;Lcom/perm/kate/ValueLabelAdapter$LabelOrientation;)V

    invoke-virtual/range {v40 .. v41}, Lcom/perm/kate/chartview/ChartView;->setLeftLabelAdapter(Lcom/perm/kate/chartview/LabelAdapter;)V

    .line 379
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/perm/kate/StatsActivity;->sex_chart_view:Lcom/perm/kate/chartview/ChartView;

    move-object/from16 v40, v0

    new-instance v41, Lcom/perm/kate/ValueLabelAdapter;

    sget-object v42, Lcom/perm/kate/ValueLabelAdapter$LabelOrientation;->HORIZONTAL:Lcom/perm/kate/ValueLabelAdapter$LabelOrientation;

    const/16 v43, 0x1

    move-object/from16 v0, v41

    move-object/from16 v1, p0

    move-object/from16 v2, v42

    move/from16 v3, v43

    invoke-direct {v0, v1, v2, v3}, Lcom/perm/kate/ValueLabelAdapter;-><init>(Landroid/content/Context;Lcom/perm/kate/ValueLabelAdapter$LabelOrientation;Z)V

    move-object/from16 v0, v40

    move-object/from16 v1, v41

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lcom/perm/kate/chartview/ChartView;->setBottomLabelAdapter(Lcom/perm/kate/chartview/LabelAdapter;Ljava/util/ArrayList;)V

    .line 383
    new-instance v32, Lcom/perm/kate/chartview/LinearSeries;

    invoke-direct/range {v32 .. v32}, Lcom/perm/kate/chartview/LinearSeries;-><init>()V

    .line 384
    .local v32, "under_18_series":Lcom/perm/kate/chartview/LinearSeries;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/perm/kate/StatsActivity;->color_chart_line1:I

    move/from16 v40, v0

    move-object/from16 v0, v32

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Lcom/perm/kate/chartview/LinearSeries;->setLineColor(I)V

    .line 385
    move-object/from16 v0, p0

    iget v0, v0, Lcom/perm/kate/StatsActivity;->lineWidth:I

    move/from16 v40, v0

    move/from16 v0, v40

    int-to-float v0, v0

    move/from16 v40, v0

    move-object/from16 v0, v32

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Lcom/perm/kate/chartview/LinearSeries;->setLineWidth(F)V

    .line 386
    move-object/from16 v0, p0

    iget v0, v0, Lcom/perm/kate/StatsActivity;->pointRadius:I

    move/from16 v40, v0

    move/from16 v0, v40

    int-to-float v0, v0

    move/from16 v40, v0

    move-object/from16 v0, v32

    move/from16 v1, v19

    move/from16 v2, v40

    invoke-virtual {v0, v1, v2}, Lcom/perm/kate/chartview/LinearSeries;->setDrawPoint(ZF)V

    .line 388
    new-instance v6, Lcom/perm/kate/chartview/LinearSeries;

    invoke-direct {v6}, Lcom/perm/kate/chartview/LinearSeries;-><init>()V

    .line 389
    .local v6, "age_18_21_series":Lcom/perm/kate/chartview/LinearSeries;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/perm/kate/StatsActivity;->color_chart_line2:I

    move/from16 v40, v0

    move/from16 v0, v40

    invoke-virtual {v6, v0}, Lcom/perm/kate/chartview/LinearSeries;->setLineColor(I)V

    .line 390
    move-object/from16 v0, p0

    iget v0, v0, Lcom/perm/kate/StatsActivity;->lineWidth:I

    move/from16 v40, v0

    move/from16 v0, v40

    int-to-float v0, v0

    move/from16 v40, v0

    move/from16 v0, v40

    invoke-virtual {v6, v0}, Lcom/perm/kate/chartview/LinearSeries;->setLineWidth(F)V

    .line 391
    move-object/from16 v0, p0

    iget v0, v0, Lcom/perm/kate/StatsActivity;->pointRadius:I

    move/from16 v40, v0

    move/from16 v0, v40

    int-to-float v0, v0

    move/from16 v40, v0

    move/from16 v0, v19

    move/from16 v1, v40

    invoke-virtual {v6, v0, v1}, Lcom/perm/kate/chartview/LinearSeries;->setDrawPoint(ZF)V

    .line 393
    new-instance v8, Lcom/perm/kate/chartview/LinearSeries;

    invoke-direct {v8}, Lcom/perm/kate/chartview/LinearSeries;-><init>()V

    .line 394
    .local v8, "age_21_24_series":Lcom/perm/kate/chartview/LinearSeries;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/perm/kate/StatsActivity;->color_chart_line3:I

    move/from16 v40, v0

    move/from16 v0, v40

    invoke-virtual {v8, v0}, Lcom/perm/kate/chartview/LinearSeries;->setLineColor(I)V

    .line 395
    move-object/from16 v0, p0

    iget v0, v0, Lcom/perm/kate/StatsActivity;->lineWidth:I

    move/from16 v40, v0

    move/from16 v0, v40

    int-to-float v0, v0

    move/from16 v40, v0

    move/from16 v0, v40

    invoke-virtual {v8, v0}, Lcom/perm/kate/chartview/LinearSeries;->setLineWidth(F)V

    .line 396
    move-object/from16 v0, p0

    iget v0, v0, Lcom/perm/kate/StatsActivity;->pointRadius:I

    move/from16 v40, v0

    move/from16 v0, v40

    int-to-float v0, v0

    move/from16 v40, v0

    move/from16 v0, v19

    move/from16 v1, v40

    invoke-virtual {v8, v0, v1}, Lcom/perm/kate/chartview/LinearSeries;->setDrawPoint(ZF)V

    .line 398
    new-instance v10, Lcom/perm/kate/chartview/LinearSeries;

    invoke-direct {v10}, Lcom/perm/kate/chartview/LinearSeries;-><init>()V

    .line 399
    .local v10, "age_24_27_series":Lcom/perm/kate/chartview/LinearSeries;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/perm/kate/StatsActivity;->color_chart_line4:I

    move/from16 v40, v0

    move/from16 v0, v40

    invoke-virtual {v10, v0}, Lcom/perm/kate/chartview/LinearSeries;->setLineColor(I)V

    .line 400
    move-object/from16 v0, p0

    iget v0, v0, Lcom/perm/kate/StatsActivity;->lineWidth:I

    move/from16 v40, v0

    move/from16 v0, v40

    int-to-float v0, v0

    move/from16 v40, v0

    move/from16 v0, v40

    invoke-virtual {v10, v0}, Lcom/perm/kate/chartview/LinearSeries;->setLineWidth(F)V

    .line 401
    move-object/from16 v0, p0

    iget v0, v0, Lcom/perm/kate/StatsActivity;->pointRadius:I

    move/from16 v40, v0

    move/from16 v0, v40

    int-to-float v0, v0

    move/from16 v40, v0

    move/from16 v0, v19

    move/from16 v1, v40

    invoke-virtual {v10, v0, v1}, Lcom/perm/kate/chartview/LinearSeries;->setDrawPoint(ZF)V

    .line 403
    new-instance v12, Lcom/perm/kate/chartview/LinearSeries;

    invoke-direct {v12}, Lcom/perm/kate/chartview/LinearSeries;-><init>()V

    .line 404
    .local v12, "age_27_30_series":Lcom/perm/kate/chartview/LinearSeries;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/perm/kate/StatsActivity;->color_chart_line5:I

    move/from16 v40, v0

    move/from16 v0, v40

    invoke-virtual {v12, v0}, Lcom/perm/kate/chartview/LinearSeries;->setLineColor(I)V

    .line 405
    move-object/from16 v0, p0

    iget v0, v0, Lcom/perm/kate/StatsActivity;->lineWidth:I

    move/from16 v40, v0

    move/from16 v0, v40

    int-to-float v0, v0

    move/from16 v40, v0

    move/from16 v0, v40

    invoke-virtual {v12, v0}, Lcom/perm/kate/chartview/LinearSeries;->setLineWidth(F)V

    .line 406
    move-object/from16 v0, p0

    iget v0, v0, Lcom/perm/kate/StatsActivity;->pointRadius:I

    move/from16 v40, v0

    move/from16 v0, v40

    int-to-float v0, v0

    move/from16 v40, v0

    move/from16 v0, v19

    move/from16 v1, v40

    invoke-virtual {v12, v0, v1}, Lcom/perm/kate/chartview/LinearSeries;->setDrawPoint(ZF)V

    .line 408
    new-instance v14, Lcom/perm/kate/chartview/LinearSeries;

    invoke-direct {v14}, Lcom/perm/kate/chartview/LinearSeries;-><init>()V

    .line 409
    .local v14, "age_30_35_series":Lcom/perm/kate/chartview/LinearSeries;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/perm/kate/StatsActivity;->color_chart_line6:I

    move/from16 v40, v0

    move/from16 v0, v40

    invoke-virtual {v14, v0}, Lcom/perm/kate/chartview/LinearSeries;->setLineColor(I)V

    .line 410
    move-object/from16 v0, p0

    iget v0, v0, Lcom/perm/kate/StatsActivity;->lineWidth:I

    move/from16 v40, v0

    move/from16 v0, v40

    int-to-float v0, v0

    move/from16 v40, v0

    move/from16 v0, v40

    invoke-virtual {v14, v0}, Lcom/perm/kate/chartview/LinearSeries;->setLineWidth(F)V

    .line 411
    move-object/from16 v0, p0

    iget v0, v0, Lcom/perm/kate/StatsActivity;->pointRadius:I

    move/from16 v40, v0

    move/from16 v0, v40

    int-to-float v0, v0

    move/from16 v40, v0

    move/from16 v0, v19

    move/from16 v1, v40

    invoke-virtual {v14, v0, v1}, Lcom/perm/kate/chartview/LinearSeries;->setDrawPoint(ZF)V

    .line 413
    new-instance v16, Lcom/perm/kate/chartview/LinearSeries;

    invoke-direct/range {v16 .. v16}, Lcom/perm/kate/chartview/LinearSeries;-><init>()V

    .line 414
    .local v16, "age_35_45_series":Lcom/perm/kate/chartview/LinearSeries;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/perm/kate/StatsActivity;->color_chart_line7:I

    move/from16 v40, v0

    move-object/from16 v0, v16

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Lcom/perm/kate/chartview/LinearSeries;->setLineColor(I)V

    .line 415
    move-object/from16 v0, p0

    iget v0, v0, Lcom/perm/kate/StatsActivity;->lineWidth:I

    move/from16 v40, v0

    move/from16 v0, v40

    int-to-float v0, v0

    move/from16 v40, v0

    move-object/from16 v0, v16

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Lcom/perm/kate/chartview/LinearSeries;->setLineWidth(F)V

    .line 416
    move-object/from16 v0, p0

    iget v0, v0, Lcom/perm/kate/StatsActivity;->pointRadius:I

    move/from16 v40, v0

    move/from16 v0, v40

    int-to-float v0, v0

    move/from16 v40, v0

    move-object/from16 v0, v16

    move/from16 v1, v19

    move/from16 v2, v40

    invoke-virtual {v0, v1, v2}, Lcom/perm/kate/chartview/LinearSeries;->setDrawPoint(ZF)V

    .line 418
    new-instance v28, Lcom/perm/kate/chartview/LinearSeries;

    invoke-direct/range {v28 .. v28}, Lcom/perm/kate/chartview/LinearSeries;-><init>()V

    .line 419
    .local v28, "over_45_series":Lcom/perm/kate/chartview/LinearSeries;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/perm/kate/StatsActivity;->color_chart_line8:I

    move/from16 v40, v0

    move-object/from16 v0, v28

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Lcom/perm/kate/chartview/LinearSeries;->setLineColor(I)V

    .line 420
    move-object/from16 v0, p0

    iget v0, v0, Lcom/perm/kate/StatsActivity;->lineWidth:I

    move/from16 v40, v0

    move/from16 v0, v40

    int-to-float v0, v0

    move/from16 v40, v0

    move-object/from16 v0, v28

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Lcom/perm/kate/chartview/LinearSeries;->setLineWidth(F)V

    .line 421
    move-object/from16 v0, p0

    iget v0, v0, Lcom/perm/kate/StatsActivity;->pointRadius:I

    move/from16 v40, v0

    move/from16 v0, v40

    int-to-float v0, v0

    move/from16 v40, v0

    move-object/from16 v0, v28

    move/from16 v1, v19

    move/from16 v2, v40

    invoke-virtual {v0, v1, v2}, Lcom/perm/kate/chartview/LinearSeries;->setDrawPoint(ZF)V

    .line 423
    const/16 v27, 0x0

    .line 424
    const-wide/16 v38, 0x0

    .line 425
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v41

    :goto_c
    invoke-interface/range {v41 .. v41}, Ljava/util/Iterator;->hasNext()Z

    move-result v40

    if-eqz v40, :cond_30

    invoke-interface/range {v41 .. v41}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Lcom/perm/kate/api/PeriodStats;

    .line 426
    .restart local v30    # "ps":Lcom/perm/kate/api/PeriodStats;
    const/16 v33, -0x1

    .line 427
    .local v33, "under_18_series_index":I
    const/4 v7, -0x1

    .line 428
    .local v7, "age_18_21_series_index":I
    const/4 v9, -0x1

    .line 429
    .local v9, "age_21_24_series_index":I
    const/4 v11, -0x1

    .line 430
    .local v11, "age_24_27_series_index":I
    const/4 v13, -0x1

    .line 431
    .local v13, "age_27_30_series_index":I
    const/4 v15, -0x1

    .line 432
    .local v15, "age_30_35_series_index":I
    const/16 v17, -0x1

    .line 433
    .local v17, "age_35_45_series_index":I
    const/16 v29, -0x1

    .line 435
    .local v29, "over_45_series_index":I
    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/perm/kate/api/PeriodStats;->age:Ljava/util/ArrayList;

    move-object/from16 v40, v0

    if-eqz v40, :cond_1f

    .line 436
    const/16 v23, 0x0

    :goto_d
    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/perm/kate/api/PeriodStats;->age:Ljava/util/ArrayList;

    move-object/from16 v40, v0

    invoke-virtual/range {v40 .. v40}, Ljava/util/ArrayList;->size()I

    move-result v40

    move/from16 v0, v23

    move/from16 v1, v40

    if-ge v0, v1, :cond_1f

    .line 437
    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/perm/kate/api/PeriodStats;->age:Ljava/util/ArrayList;

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v40

    check-cast v40, Lcom/perm/kate/api/StatsValue;

    move-object/from16 v0, v40

    iget-object v0, v0, Lcom/perm/kate/api/StatsValue;->value:Ljava/lang/String;

    move-object/from16 v34, v0

    .line 438
    .restart local v34    # "v":Ljava/lang/String;
    const-string v40, "12-18"

    move-object/from16 v0, v40

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v40

    if-eqz v40, :cond_18

    .line 439
    move/from16 v33, v23

    .line 436
    :cond_15
    :goto_e
    add-int/lit8 v23, v23, 0x1

    goto :goto_d

    .line 368
    .end local v6    # "age_18_21_series":Lcom/perm/kate/chartview/LinearSeries;
    .end local v7    # "age_18_21_series_index":I
    .end local v8    # "age_21_24_series":Lcom/perm/kate/chartview/LinearSeries;
    .end local v9    # "age_21_24_series_index":I
    .end local v10    # "age_24_27_series":Lcom/perm/kate/chartview/LinearSeries;
    .end local v11    # "age_24_27_series_index":I
    .end local v12    # "age_27_30_series":Lcom/perm/kate/chartview/LinearSeries;
    .end local v13    # "age_27_30_series_index":I
    .end local v14    # "age_30_35_series":Lcom/perm/kate/chartview/LinearSeries;
    .end local v15    # "age_30_35_series_index":I
    .end local v16    # "age_35_45_series":Lcom/perm/kate/chartview/LinearSeries;
    .end local v17    # "age_35_45_series_index":I
    .end local v28    # "over_45_series":Lcom/perm/kate/chartview/LinearSeries;
    .end local v29    # "over_45_series_index":I
    .end local v30    # "ps":Lcom/perm/kate/api/PeriodStats;
    .end local v32    # "under_18_series":Lcom/perm/kate/chartview/LinearSeries;
    .end local v33    # "under_18_series_index":I
    .end local v34    # "v":Ljava/lang/String;
    :cond_16
    const/16 v40, 0x7

    move/from16 v0, v27

    move/from16 v1, v40

    if-ge v0, v1, :cond_17

    .line 369
    add-int/lit8 v22, v27, -0x1

    goto/16 :goto_b

    .line 370
    :cond_17
    const/16 v40, 0xe

    move/from16 v0, v27

    move/from16 v1, v40

    if-ge v0, v1, :cond_14

    .line 371
    move/from16 v0, v27

    int-to-double v0, v0

    move-wide/from16 v40, v0

    const-wide v42, 0x4006666666666666L    # 2.8

    div-double v40, v40, v42

    invoke-static/range {v40 .. v41}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v40

    move-wide/from16 v0, v40

    double-to-int v0, v0

    move/from16 v22, v0

    goto/16 :goto_b

    .line 440
    .restart local v6    # "age_18_21_series":Lcom/perm/kate/chartview/LinearSeries;
    .restart local v7    # "age_18_21_series_index":I
    .restart local v8    # "age_21_24_series":Lcom/perm/kate/chartview/LinearSeries;
    .restart local v9    # "age_21_24_series_index":I
    .restart local v10    # "age_24_27_series":Lcom/perm/kate/chartview/LinearSeries;
    .restart local v11    # "age_24_27_series_index":I
    .restart local v12    # "age_27_30_series":Lcom/perm/kate/chartview/LinearSeries;
    .restart local v13    # "age_27_30_series_index":I
    .restart local v14    # "age_30_35_series":Lcom/perm/kate/chartview/LinearSeries;
    .restart local v15    # "age_30_35_series_index":I
    .restart local v16    # "age_35_45_series":Lcom/perm/kate/chartview/LinearSeries;
    .restart local v17    # "age_35_45_series_index":I
    .restart local v28    # "over_45_series":Lcom/perm/kate/chartview/LinearSeries;
    .restart local v29    # "over_45_series_index":I
    .restart local v30    # "ps":Lcom/perm/kate/api/PeriodStats;
    .restart local v32    # "under_18_series":Lcom/perm/kate/chartview/LinearSeries;
    .restart local v33    # "under_18_series_index":I
    .restart local v34    # "v":Ljava/lang/String;
    :cond_18
    const-string v40, "18-21"

    move-object/from16 v0, v40

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v40

    if-eqz v40, :cond_19

    .line 441
    move/from16 v7, v23

    goto :goto_e

    .line 442
    :cond_19
    const-string v40, "21-24"

    move-object/from16 v0, v40

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v40

    if-eqz v40, :cond_1a

    .line 443
    move/from16 v9, v23

    goto :goto_e

    .line 444
    :cond_1a
    const-string v40, "24-27"

    move-object/from16 v0, v40

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v40

    if-eqz v40, :cond_1b

    .line 445
    move/from16 v11, v23

    goto :goto_e

    .line 446
    :cond_1b
    const-string v40, "27-30"

    move-object/from16 v0, v40

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v40

    if-eqz v40, :cond_1c

    .line 447
    move/from16 v13, v23

    goto :goto_e

    .line 448
    :cond_1c
    const-string v40, "30-35"

    move-object/from16 v0, v40

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v40

    if-eqz v40, :cond_1d

    .line 449
    move/from16 v15, v23

    goto :goto_e

    .line 450
    :cond_1d
    const-string v40, "35-45"

    move-object/from16 v0, v40

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v40

    if-eqz v40, :cond_1e

    .line 451
    move/from16 v17, v23

    goto/16 :goto_e

    .line 452
    :cond_1e
    const-string v40, "45-100"

    move-object/from16 v0, v40

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v40

    if-eqz v40, :cond_15

    .line 453
    move/from16 v29, v23

    goto/16 :goto_e

    .line 456
    .end local v34    # "v":Ljava/lang/String;
    :cond_1f
    const/16 v40, -0x1

    move/from16 v0, v33

    move/from16 v1, v40

    if-le v0, v1, :cond_28

    .line 457
    new-instance v42, Lcom/perm/kate/chartview/LinearSeries$LinearPoint;

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/perm/kate/api/PeriodStats;->age:Ljava/util/ArrayList;

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v40

    check-cast v40, Lcom/perm/kate/api/StatsValue;

    move-object/from16 v0, v40

    iget v0, v0, Lcom/perm/kate/api/StatsValue;->visitors:I

    move/from16 v40, v0

    move/from16 v0, v40

    int-to-double v0, v0

    move-wide/from16 v44, v0

    move-object/from16 v0, v42

    move-wide/from16 v1, v38

    move-wide/from16 v3, v44

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/perm/kate/chartview/LinearSeries$LinearPoint;-><init>(DD)V

    move-object/from16 v0, v32

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Lcom/perm/kate/chartview/LinearSeries;->addPoint(Lcom/perm/kate/chartview/AbstractSeries$AbstractPoint;)V

    .line 458
    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/perm/kate/api/PeriodStats;->age:Ljava/util/ArrayList;

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v40

    check-cast v40, Lcom/perm/kate/api/StatsValue;

    move-object/from16 v0, v40

    iget v0, v0, Lcom/perm/kate/api/StatsValue;->visitors:I

    move/from16 v40, v0

    move/from16 v0, v40

    move/from16 v1, v27

    if-le v0, v1, :cond_20

    .line 459
    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/perm/kate/api/PeriodStats;->age:Ljava/util/ArrayList;

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v40

    check-cast v40, Lcom/perm/kate/api/StatsValue;

    move-object/from16 v0, v40

    iget v0, v0, Lcom/perm/kate/api/StatsValue;->visitors:I

    move/from16 v27, v0

    .line 462
    :cond_20
    :goto_f
    const/16 v40, -0x1

    move/from16 v0, v40

    if-le v7, v0, :cond_29

    .line 463
    new-instance v42, Lcom/perm/kate/chartview/LinearSeries$LinearPoint;

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/perm/kate/api/PeriodStats;->age:Ljava/util/ArrayList;

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v40

    check-cast v40, Lcom/perm/kate/api/StatsValue;

    move-object/from16 v0, v40

    iget v0, v0, Lcom/perm/kate/api/StatsValue;->visitors:I

    move/from16 v40, v0

    move/from16 v0, v40

    int-to-double v0, v0

    move-wide/from16 v44, v0

    move-object/from16 v0, v42

    move-wide/from16 v1, v38

    move-wide/from16 v3, v44

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/perm/kate/chartview/LinearSeries$LinearPoint;-><init>(DD)V

    move-object/from16 v0, v42

    invoke-virtual {v6, v0}, Lcom/perm/kate/chartview/LinearSeries;->addPoint(Lcom/perm/kate/chartview/AbstractSeries$AbstractPoint;)V

    .line 464
    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/perm/kate/api/PeriodStats;->age:Ljava/util/ArrayList;

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v40

    check-cast v40, Lcom/perm/kate/api/StatsValue;

    move-object/from16 v0, v40

    iget v0, v0, Lcom/perm/kate/api/StatsValue;->visitors:I

    move/from16 v40, v0

    move/from16 v0, v40

    move/from16 v1, v27

    if-le v0, v1, :cond_21

    .line 465
    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/perm/kate/api/PeriodStats;->age:Ljava/util/ArrayList;

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v40

    check-cast v40, Lcom/perm/kate/api/StatsValue;

    move-object/from16 v0, v40

    iget v0, v0, Lcom/perm/kate/api/StatsValue;->visitors:I

    move/from16 v27, v0

    .line 468
    :cond_21
    :goto_10
    const/16 v40, -0x1

    move/from16 v0, v40

    if-le v9, v0, :cond_2a

    .line 469
    new-instance v42, Lcom/perm/kate/chartview/LinearSeries$LinearPoint;

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/perm/kate/api/PeriodStats;->age:Ljava/util/ArrayList;

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v40

    check-cast v40, Lcom/perm/kate/api/StatsValue;

    move-object/from16 v0, v40

    iget v0, v0, Lcom/perm/kate/api/StatsValue;->visitors:I

    move/from16 v40, v0

    move/from16 v0, v40

    int-to-double v0, v0

    move-wide/from16 v44, v0

    move-object/from16 v0, v42

    move-wide/from16 v1, v38

    move-wide/from16 v3, v44

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/perm/kate/chartview/LinearSeries$LinearPoint;-><init>(DD)V

    move-object/from16 v0, v42

    invoke-virtual {v8, v0}, Lcom/perm/kate/chartview/LinearSeries;->addPoint(Lcom/perm/kate/chartview/AbstractSeries$AbstractPoint;)V

    .line 470
    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/perm/kate/api/PeriodStats;->age:Ljava/util/ArrayList;

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v40

    check-cast v40, Lcom/perm/kate/api/StatsValue;

    move-object/from16 v0, v40

    iget v0, v0, Lcom/perm/kate/api/StatsValue;->visitors:I

    move/from16 v40, v0

    move/from16 v0, v40

    move/from16 v1, v27

    if-le v0, v1, :cond_22

    .line 471
    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/perm/kate/api/PeriodStats;->age:Ljava/util/ArrayList;

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v40

    check-cast v40, Lcom/perm/kate/api/StatsValue;

    move-object/from16 v0, v40

    iget v0, v0, Lcom/perm/kate/api/StatsValue;->visitors:I

    move/from16 v27, v0

    .line 474
    :cond_22
    :goto_11
    const/16 v40, -0x1

    move/from16 v0, v40

    if-le v11, v0, :cond_2b

    .line 475
    new-instance v42, Lcom/perm/kate/chartview/LinearSeries$LinearPoint;

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/perm/kate/api/PeriodStats;->age:Ljava/util/ArrayList;

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v40

    check-cast v40, Lcom/perm/kate/api/StatsValue;

    move-object/from16 v0, v40

    iget v0, v0, Lcom/perm/kate/api/StatsValue;->visitors:I

    move/from16 v40, v0

    move/from16 v0, v40

    int-to-double v0, v0

    move-wide/from16 v44, v0

    move-object/from16 v0, v42

    move-wide/from16 v1, v38

    move-wide/from16 v3, v44

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/perm/kate/chartview/LinearSeries$LinearPoint;-><init>(DD)V

    move-object/from16 v0, v42

    invoke-virtual {v10, v0}, Lcom/perm/kate/chartview/LinearSeries;->addPoint(Lcom/perm/kate/chartview/AbstractSeries$AbstractPoint;)V

    .line 476
    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/perm/kate/api/PeriodStats;->age:Ljava/util/ArrayList;

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v40

    check-cast v40, Lcom/perm/kate/api/StatsValue;

    move-object/from16 v0, v40

    iget v0, v0, Lcom/perm/kate/api/StatsValue;->visitors:I

    move/from16 v40, v0

    move/from16 v0, v40

    move/from16 v1, v27

    if-le v0, v1, :cond_23

    .line 477
    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/perm/kate/api/PeriodStats;->age:Ljava/util/ArrayList;

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v40

    check-cast v40, Lcom/perm/kate/api/StatsValue;

    move-object/from16 v0, v40

    iget v0, v0, Lcom/perm/kate/api/StatsValue;->visitors:I

    move/from16 v27, v0

    .line 480
    :cond_23
    :goto_12
    const/16 v40, -0x1

    move/from16 v0, v40

    if-le v13, v0, :cond_2c

    .line 481
    new-instance v42, Lcom/perm/kate/chartview/LinearSeries$LinearPoint;

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/perm/kate/api/PeriodStats;->age:Ljava/util/ArrayList;

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v40

    check-cast v40, Lcom/perm/kate/api/StatsValue;

    move-object/from16 v0, v40

    iget v0, v0, Lcom/perm/kate/api/StatsValue;->visitors:I

    move/from16 v40, v0

    move/from16 v0, v40

    int-to-double v0, v0

    move-wide/from16 v44, v0

    move-object/from16 v0, v42

    move-wide/from16 v1, v38

    move-wide/from16 v3, v44

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/perm/kate/chartview/LinearSeries$LinearPoint;-><init>(DD)V

    move-object/from16 v0, v42

    invoke-virtual {v12, v0}, Lcom/perm/kate/chartview/LinearSeries;->addPoint(Lcom/perm/kate/chartview/AbstractSeries$AbstractPoint;)V

    .line 482
    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/perm/kate/api/PeriodStats;->age:Ljava/util/ArrayList;

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v40

    check-cast v40, Lcom/perm/kate/api/StatsValue;

    move-object/from16 v0, v40

    iget v0, v0, Lcom/perm/kate/api/StatsValue;->visitors:I

    move/from16 v40, v0

    move/from16 v0, v40

    move/from16 v1, v27

    if-le v0, v1, :cond_24

    .line 483
    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/perm/kate/api/PeriodStats;->age:Ljava/util/ArrayList;

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v40

    check-cast v40, Lcom/perm/kate/api/StatsValue;

    move-object/from16 v0, v40

    iget v0, v0, Lcom/perm/kate/api/StatsValue;->visitors:I

    move/from16 v27, v0

    .line 486
    :cond_24
    :goto_13
    const/16 v40, -0x1

    move/from16 v0, v40

    if-le v15, v0, :cond_2d

    .line 487
    new-instance v42, Lcom/perm/kate/chartview/LinearSeries$LinearPoint;

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/perm/kate/api/PeriodStats;->age:Ljava/util/ArrayList;

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v40

    check-cast v40, Lcom/perm/kate/api/StatsValue;

    move-object/from16 v0, v40

    iget v0, v0, Lcom/perm/kate/api/StatsValue;->visitors:I

    move/from16 v40, v0

    move/from16 v0, v40

    int-to-double v0, v0

    move-wide/from16 v44, v0

    move-object/from16 v0, v42

    move-wide/from16 v1, v38

    move-wide/from16 v3, v44

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/perm/kate/chartview/LinearSeries$LinearPoint;-><init>(DD)V

    move-object/from16 v0, v42

    invoke-virtual {v14, v0}, Lcom/perm/kate/chartview/LinearSeries;->addPoint(Lcom/perm/kate/chartview/AbstractSeries$AbstractPoint;)V

    .line 488
    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/perm/kate/api/PeriodStats;->age:Ljava/util/ArrayList;

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v40

    check-cast v40, Lcom/perm/kate/api/StatsValue;

    move-object/from16 v0, v40

    iget v0, v0, Lcom/perm/kate/api/StatsValue;->visitors:I

    move/from16 v40, v0

    move/from16 v0, v40

    move/from16 v1, v27

    if-le v0, v1, :cond_25

    .line 489
    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/perm/kate/api/PeriodStats;->age:Ljava/util/ArrayList;

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v40

    check-cast v40, Lcom/perm/kate/api/StatsValue;

    move-object/from16 v0, v40

    iget v0, v0, Lcom/perm/kate/api/StatsValue;->visitors:I

    move/from16 v27, v0

    .line 492
    :cond_25
    :goto_14
    const/16 v40, -0x1

    move/from16 v0, v17

    move/from16 v1, v40

    if-le v0, v1, :cond_2e

    .line 493
    new-instance v42, Lcom/perm/kate/chartview/LinearSeries$LinearPoint;

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/perm/kate/api/PeriodStats;->age:Ljava/util/ArrayList;

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v40

    check-cast v40, Lcom/perm/kate/api/StatsValue;

    move-object/from16 v0, v40

    iget v0, v0, Lcom/perm/kate/api/StatsValue;->visitors:I

    move/from16 v40, v0

    move/from16 v0, v40

    int-to-double v0, v0

    move-wide/from16 v44, v0

    move-object/from16 v0, v42

    move-wide/from16 v1, v38

    move-wide/from16 v3, v44

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/perm/kate/chartview/LinearSeries$LinearPoint;-><init>(DD)V

    move-object/from16 v0, v16

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Lcom/perm/kate/chartview/LinearSeries;->addPoint(Lcom/perm/kate/chartview/AbstractSeries$AbstractPoint;)V

    .line 494
    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/perm/kate/api/PeriodStats;->age:Ljava/util/ArrayList;

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v40

    check-cast v40, Lcom/perm/kate/api/StatsValue;

    move-object/from16 v0, v40

    iget v0, v0, Lcom/perm/kate/api/StatsValue;->visitors:I

    move/from16 v40, v0

    move/from16 v0, v40

    move/from16 v1, v27

    if-le v0, v1, :cond_26

    .line 495
    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/perm/kate/api/PeriodStats;->age:Ljava/util/ArrayList;

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v40

    check-cast v40, Lcom/perm/kate/api/StatsValue;

    move-object/from16 v0, v40

    iget v0, v0, Lcom/perm/kate/api/StatsValue;->visitors:I

    move/from16 v27, v0

    .line 498
    :cond_26
    :goto_15
    const/16 v40, -0x1

    move/from16 v0, v29

    move/from16 v1, v40

    if-le v0, v1, :cond_2f

    .line 499
    new-instance v42, Lcom/perm/kate/chartview/LinearSeries$LinearPoint;

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/perm/kate/api/PeriodStats;->age:Ljava/util/ArrayList;

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v40

    check-cast v40, Lcom/perm/kate/api/StatsValue;

    move-object/from16 v0, v40

    iget v0, v0, Lcom/perm/kate/api/StatsValue;->visitors:I

    move/from16 v40, v0

    move/from16 v0, v40

    int-to-double v0, v0

    move-wide/from16 v44, v0

    move-object/from16 v0, v42

    move-wide/from16 v1, v38

    move-wide/from16 v3, v44

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/perm/kate/chartview/LinearSeries$LinearPoint;-><init>(DD)V

    move-object/from16 v0, v28

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Lcom/perm/kate/chartview/LinearSeries;->addPoint(Lcom/perm/kate/chartview/AbstractSeries$AbstractPoint;)V

    .line 500
    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/perm/kate/api/PeriodStats;->age:Ljava/util/ArrayList;

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v40

    check-cast v40, Lcom/perm/kate/api/StatsValue;

    move-object/from16 v0, v40

    iget v0, v0, Lcom/perm/kate/api/StatsValue;->visitors:I

    move/from16 v40, v0

    move/from16 v0, v40

    move/from16 v1, v27

    if-le v0, v1, :cond_27

    .line 501
    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/perm/kate/api/PeriodStats;->age:Ljava/util/ArrayList;

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v40

    check-cast v40, Lcom/perm/kate/api/StatsValue;

    move-object/from16 v0, v40

    iget v0, v0, Lcom/perm/kate/api/StatsValue;->visitors:I

    move/from16 v27, v0

    .line 505
    :cond_27
    :goto_16
    const-wide/high16 v42, 0x3ff0000000000000L    # 1.0

    add-double v38, v38, v42

    .line 506
    goto/16 :goto_c

    .line 461
    :cond_28
    new-instance v40, Lcom/perm/kate/chartview/LinearSeries$LinearPoint;

    const-wide/16 v42, 0x0

    move-object/from16 v0, v40

    move-wide/from16 v1, v38

    move-wide/from16 v3, v42

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/perm/kate/chartview/LinearSeries$LinearPoint;-><init>(DD)V

    move-object/from16 v0, v32

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Lcom/perm/kate/chartview/LinearSeries;->addPoint(Lcom/perm/kate/chartview/AbstractSeries$AbstractPoint;)V

    goto/16 :goto_f

    .line 467
    :cond_29
    new-instance v40, Lcom/perm/kate/chartview/LinearSeries$LinearPoint;

    const-wide/16 v42, 0x0

    move-object/from16 v0, v40

    move-wide/from16 v1, v38

    move-wide/from16 v3, v42

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/perm/kate/chartview/LinearSeries$LinearPoint;-><init>(DD)V

    move-object/from16 v0, v40

    invoke-virtual {v6, v0}, Lcom/perm/kate/chartview/LinearSeries;->addPoint(Lcom/perm/kate/chartview/AbstractSeries$AbstractPoint;)V

    goto/16 :goto_10

    .line 473
    :cond_2a
    new-instance v40, Lcom/perm/kate/chartview/LinearSeries$LinearPoint;

    const-wide/16 v42, 0x0

    move-object/from16 v0, v40

    move-wide/from16 v1, v38

    move-wide/from16 v3, v42

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/perm/kate/chartview/LinearSeries$LinearPoint;-><init>(DD)V

    move-object/from16 v0, v40

    invoke-virtual {v8, v0}, Lcom/perm/kate/chartview/LinearSeries;->addPoint(Lcom/perm/kate/chartview/AbstractSeries$AbstractPoint;)V

    goto/16 :goto_11

    .line 479
    :cond_2b
    new-instance v40, Lcom/perm/kate/chartview/LinearSeries$LinearPoint;

    const-wide/16 v42, 0x0

    move-object/from16 v0, v40

    move-wide/from16 v1, v38

    move-wide/from16 v3, v42

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/perm/kate/chartview/LinearSeries$LinearPoint;-><init>(DD)V

    move-object/from16 v0, v40

    invoke-virtual {v10, v0}, Lcom/perm/kate/chartview/LinearSeries;->addPoint(Lcom/perm/kate/chartview/AbstractSeries$AbstractPoint;)V

    goto/16 :goto_12

    .line 485
    :cond_2c
    new-instance v40, Lcom/perm/kate/chartview/LinearSeries$LinearPoint;

    const-wide/16 v42, 0x0

    move-object/from16 v0, v40

    move-wide/from16 v1, v38

    move-wide/from16 v3, v42

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/perm/kate/chartview/LinearSeries$LinearPoint;-><init>(DD)V

    move-object/from16 v0, v40

    invoke-virtual {v12, v0}, Lcom/perm/kate/chartview/LinearSeries;->addPoint(Lcom/perm/kate/chartview/AbstractSeries$AbstractPoint;)V

    goto/16 :goto_13

    .line 491
    :cond_2d
    new-instance v40, Lcom/perm/kate/chartview/LinearSeries$LinearPoint;

    const-wide/16 v42, 0x0

    move-object/from16 v0, v40

    move-wide/from16 v1, v38

    move-wide/from16 v3, v42

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/perm/kate/chartview/LinearSeries$LinearPoint;-><init>(DD)V

    move-object/from16 v0, v40

    invoke-virtual {v14, v0}, Lcom/perm/kate/chartview/LinearSeries;->addPoint(Lcom/perm/kate/chartview/AbstractSeries$AbstractPoint;)V

    goto/16 :goto_14

    .line 497
    :cond_2e
    new-instance v40, Lcom/perm/kate/chartview/LinearSeries$LinearPoint;

    const-wide/16 v42, 0x0

    move-object/from16 v0, v40

    move-wide/from16 v1, v38

    move-wide/from16 v3, v42

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/perm/kate/chartview/LinearSeries$LinearPoint;-><init>(DD)V

    move-object/from16 v0, v16

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Lcom/perm/kate/chartview/LinearSeries;->addPoint(Lcom/perm/kate/chartview/AbstractSeries$AbstractPoint;)V

    goto/16 :goto_15

    .line 503
    :cond_2f
    new-instance v40, Lcom/perm/kate/chartview/LinearSeries$LinearPoint;

    const-wide/16 v42, 0x0

    move-object/from16 v0, v40

    move-wide/from16 v1, v38

    move-wide/from16 v3, v42

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/perm/kate/chartview/LinearSeries$LinearPoint;-><init>(DD)V

    move-object/from16 v0, v28

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Lcom/perm/kate/chartview/LinearSeries;->addPoint(Lcom/perm/kate/chartview/AbstractSeries$AbstractPoint;)V

    goto/16 :goto_16

    .line 509
    .end local v7    # "age_18_21_series_index":I
    .end local v9    # "age_21_24_series_index":I
    .end local v11    # "age_24_27_series_index":I
    .end local v13    # "age_27_30_series_index":I
    .end local v15    # "age_30_35_series_index":I
    .end local v17    # "age_35_45_series_index":I
    .end local v29    # "over_45_series_index":I
    .end local v30    # "ps":Lcom/perm/kate/api/PeriodStats;
    .end local v33    # "under_18_series_index":I
    :cond_30
    const/16 v22, 0x5

    .line 510
    const/16 v40, 0x2

    move/from16 v0, v27

    move/from16 v1, v40

    if-ge v0, v1, :cond_32

    .line 511
    const/16 v22, 0x0

    .line 517
    :cond_31
    :goto_17
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/perm/kate/StatsActivity;->age_chart_view:Lcom/perm/kate/chartview/ChartView;

    move-object/from16 v40, v0

    invoke-virtual/range {v40 .. v40}, Lcom/perm/kate/chartview/ChartView;->clearSeries()V

    .line 518
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/perm/kate/StatsActivity;->age_chart_view:Lcom/perm/kate/chartview/ChartView;

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/perm/kate/chartview/ChartView;->setGridLinesVertical(I)V

    .line 519
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/perm/kate/StatsActivity;->age_chart_view:Lcom/perm/kate/chartview/ChartView;

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Lcom/perm/kate/chartview/ChartView;->setGridLinesHorizontal(I)V

    .line 521
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/perm/kate/StatsActivity;->age_chart_view:Lcom/perm/kate/chartview/ChartView;

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/perm/kate/chartview/ChartView;->addSeries(Lcom/perm/kate/chartview/AbstractSeries;)V

    .line 522
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/perm/kate/StatsActivity;->age_chart_view:Lcom/perm/kate/chartview/ChartView;

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    invoke-virtual {v0, v6}, Lcom/perm/kate/chartview/ChartView;->addSeries(Lcom/perm/kate/chartview/AbstractSeries;)V

    .line 523
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/perm/kate/StatsActivity;->age_chart_view:Lcom/perm/kate/chartview/ChartView;

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    invoke-virtual {v0, v8}, Lcom/perm/kate/chartview/ChartView;->addSeries(Lcom/perm/kate/chartview/AbstractSeries;)V

    .line 524
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/perm/kate/StatsActivity;->age_chart_view:Lcom/perm/kate/chartview/ChartView;

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    invoke-virtual {v0, v10}, Lcom/perm/kate/chartview/ChartView;->addSeries(Lcom/perm/kate/chartview/AbstractSeries;)V

    .line 525
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/perm/kate/StatsActivity;->age_chart_view:Lcom/perm/kate/chartview/ChartView;

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    invoke-virtual {v0, v12}, Lcom/perm/kate/chartview/ChartView;->addSeries(Lcom/perm/kate/chartview/AbstractSeries;)V

    .line 526
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/perm/kate/StatsActivity;->age_chart_view:Lcom/perm/kate/chartview/ChartView;

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    invoke-virtual {v0, v14}, Lcom/perm/kate/chartview/ChartView;->addSeries(Lcom/perm/kate/chartview/AbstractSeries;)V

    .line 527
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/perm/kate/StatsActivity;->age_chart_view:Lcom/perm/kate/chartview/ChartView;

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/perm/kate/chartview/ChartView;->addSeries(Lcom/perm/kate/chartview/AbstractSeries;)V

    .line 528
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/perm/kate/StatsActivity;->age_chart_view:Lcom/perm/kate/chartview/ChartView;

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/perm/kate/chartview/ChartView;->addSeries(Lcom/perm/kate/chartview/AbstractSeries;)V

    .line 529
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/perm/kate/StatsActivity;->age_chart_view:Lcom/perm/kate/chartview/ChartView;

    move-object/from16 v40, v0

    new-instance v41, Lcom/perm/kate/ValueLabelAdapter;

    sget-object v42, Lcom/perm/kate/ValueLabelAdapter$LabelOrientation;->VERTICAL:Lcom/perm/kate/ValueLabelAdapter$LabelOrientation;

    move-object/from16 v0, v41

    move-object/from16 v1, p0

    move-object/from16 v2, v42

    invoke-direct {v0, v1, v2}, Lcom/perm/kate/ValueLabelAdapter;-><init>(Landroid/content/Context;Lcom/perm/kate/ValueLabelAdapter$LabelOrientation;)V

    invoke-virtual/range {v40 .. v41}, Lcom/perm/kate/chartview/ChartView;->setLeftLabelAdapter(Lcom/perm/kate/chartview/LabelAdapter;)V

    .line 530
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/perm/kate/StatsActivity;->age_chart_view:Lcom/perm/kate/chartview/ChartView;

    move-object/from16 v40, v0

    new-instance v41, Lcom/perm/kate/ValueLabelAdapter;

    sget-object v42, Lcom/perm/kate/ValueLabelAdapter$LabelOrientation;->HORIZONTAL:Lcom/perm/kate/ValueLabelAdapter$LabelOrientation;

    const/16 v43, 0x1

    move-object/from16 v0, v41

    move-object/from16 v1, p0

    move-object/from16 v2, v42

    move/from16 v3, v43

    invoke-direct {v0, v1, v2, v3}, Lcom/perm/kate/ValueLabelAdapter;-><init>(Landroid/content/Context;Lcom/perm/kate/ValueLabelAdapter$LabelOrientation;Z)V

    move-object/from16 v0, v40

    move-object/from16 v1, v41

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lcom/perm/kate/chartview/ChartView;->setBottomLabelAdapter(Lcom/perm/kate/chartview/LabelAdapter;Ljava/util/ArrayList;)V

    goto/16 :goto_0

    .line 512
    :cond_32
    const/16 v40, 0x7

    move/from16 v0, v27

    move/from16 v1, v40

    if-ge v0, v1, :cond_33

    .line 513
    add-int/lit8 v22, v27, -0x1

    goto/16 :goto_17

    .line 514
    :cond_33
    const/16 v40, 0xe

    move/from16 v0, v27

    move/from16 v1, v40

    if-ge v0, v1, :cond_31

    .line 515
    move/from16 v0, v27

    int-to-double v0, v0

    move-wide/from16 v40, v0

    const-wide v42, 0x4006666666666666L    # 2.8

    div-double v40, v40, v42

    invoke-static/range {v40 .. v41}, Ljava/lang/Math;->ceil(D)D
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    move-result-wide v40

    move-wide/from16 v0, v40

    double-to-int v0, v0

    move/from16 v22, v0

    goto/16 :goto_17
.end method

.method private diplayDataInUiThread(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/perm/kate/api/PeriodStats;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 219
    .local p1, "stats":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/perm/kate/api/PeriodStats;>;"
    invoke-virtual {p0}, Lcom/perm/kate/StatsActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 227
    :goto_0
    return-void

    .line 221
    :cond_0
    new-instance v0, Lcom/perm/kate/StatsActivity$5;

    invoke-direct {v0, p0, p1}, Lcom/perm/kate/StatsActivity$5;-><init>(Lcom/perm/kate/StatsActivity;Ljava/util/ArrayList;)V

    invoke-virtual {p0, v0}, Lcom/perm/kate/StatsActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method private initDates()V
    .locals 7

    .prologue
    const/4 v6, 0x2

    .line 159
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 160
    .local v0, "calendar":Ljava/util/Calendar;
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v3

    .line 161
    .local v3, "year":I
    invoke-virtual {v0, v6}, Ljava/util/Calendar;->get(I)I

    move-result v2

    .line 162
    .local v2, "month":I
    const/4 v4, 0x5

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 163
    .local v1, "day":I
    new-instance v4, Ljava/util/Date;

    add-int/lit16 v5, v3, -0x76c

    invoke-direct {v4, v5, v2, v1}, Ljava/util/Date;-><init>(III)V

    iput-object v4, p0, Lcom/perm/kate/StatsActivity;->date_to:Ljava/util/Date;

    .line 164
    const/4 v4, -0x1

    invoke-virtual {v0, v6, v4}, Ljava/util/Calendar;->add(II)V

    .line 166
    if-nez v2, :cond_0

    .line 167
    add-int/lit8 v3, v3, -0x1

    .line 168
    :cond_0
    invoke-virtual {v0, v6}, Ljava/util/Calendar;->get(I)I

    move-result v2

    .line 169
    new-instance v4, Ljava/util/Date;

    add-int/lit16 v5, v3, -0x76c

    invoke-direct {v4, v5, v2, v1}, Ljava/util/Date;-><init>(III)V

    iput-object v4, p0, Lcom/perm/kate/StatsActivity;->date_from:Ljava/util/Date;

    .line 171
    invoke-direct {p0}, Lcom/perm/kate/StatsActivity;->updateApiDateStrings()V

    .line 172
    return-void
.end method

.method private initFields()V
    .locals 2

    .prologue
    .line 145
    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    invoke-static {v0, v1}, Lcom/perm/kate/Helper;->getDIP(D)I

    move-result v0

    iput v0, p0, Lcom/perm/kate/StatsActivity;->lineWidth:I

    .line 146
    const-wide/high16 v0, 0x4008000000000000L    # 3.0

    invoke-static {v0, v1}, Lcom/perm/kate/Helper;->getDIP(D)I

    move-result v0

    iput v0, p0, Lcom/perm/kate/StatsActivity;->pointRadius:I

    .line 147
    invoke-virtual {p0}, Lcom/perm/kate/StatsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c005c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/perm/kate/StatsActivity;->color_chart_line1:I

    .line 148
    invoke-virtual {p0}, Lcom/perm/kate/StatsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c005d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/perm/kate/StatsActivity;->color_chart_line2:I

    .line 149
    invoke-virtual {p0}, Lcom/perm/kate/StatsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c005e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/perm/kate/StatsActivity;->color_chart_line3:I

    .line 150
    invoke-virtual {p0}, Lcom/perm/kate/StatsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c005f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/perm/kate/StatsActivity;->color_chart_line4:I

    .line 151
    invoke-virtual {p0}, Lcom/perm/kate/StatsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c0060

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/perm/kate/StatsActivity;->color_chart_line5:I

    .line 152
    invoke-virtual {p0}, Lcom/perm/kate/StatsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c0061

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/perm/kate/StatsActivity;->color_chart_line6:I

    .line 153
    invoke-virtual {p0}, Lcom/perm/kate/StatsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c0062

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/perm/kate/StatsActivity;->color_chart_line7:I

    .line 154
    invoke-virtual {p0}, Lcom/perm/kate/StatsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c0063

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/perm/kate/StatsActivity;->color_chart_line8:I

    .line 155
    return-void
.end method

.method private onOrientationChanged()V
    .locals 1

    .prologue
    .line 560
    iget-object v0, p0, Lcom/perm/kate/StatsActivity;->visitors_views_chart_view:Lcom/perm/kate/chartview/ChartView;

    if-eqz v0, :cond_0

    .line 561
    iget-object v0, p0, Lcom/perm/kate/StatsActivity;->visitors_views_chart_view:Lcom/perm/kate/chartview/ChartView;

    invoke-virtual {v0}, Lcom/perm/kate/chartview/ChartView;->onOrientationChanged()V

    .line 562
    :cond_0
    iget-object v0, p0, Lcom/perm/kate/StatsActivity;->sex_chart_view:Lcom/perm/kate/chartview/ChartView;

    if-eqz v0, :cond_1

    .line 563
    iget-object v0, p0, Lcom/perm/kate/StatsActivity;->sex_chart_view:Lcom/perm/kate/chartview/ChartView;

    invoke-virtual {v0}, Lcom/perm/kate/chartview/ChartView;->onOrientationChanged()V

    .line 564
    :cond_1
    iget-object v0, p0, Lcom/perm/kate/StatsActivity;->age_chart_view:Lcom/perm/kate/chartview/ChartView;

    if-eqz v0, :cond_2

    .line 565
    iget-object v0, p0, Lcom/perm/kate/StatsActivity;->age_chart_view:Lcom/perm/kate/chartview/ChartView;

    invoke-virtual {v0}, Lcom/perm/kate/chartview/ChartView;->onOrientationChanged()V

    .line 566
    :cond_2
    return-void
.end method

.method private parseDate(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "day_str"    # Ljava/lang/String;

    .prologue
    .line 539
    const/4 v2, 0x0

    .line 541
    .local v2, "res":Ljava/lang/String;
    :try_start_0
    iget-object v3, p0, Lcom/perm/kate/StatsActivity;->api_df:Ljava/text/SimpleDateFormat;

    invoke-virtual {v3, p1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    .line 542
    .local v0, "day":Ljava/util/Date;
    iget-object v3, p0, Lcom/perm/kate/StatsActivity;->label_df:Ljava/text/SimpleDateFormat;

    invoke-virtual {v3, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 546
    .end local v0    # "day":Ljava/util/Date;
    :goto_0
    return-object v2

    .line 543
    :catch_0
    move-exception v1

    .line 544
    .local v1, "e":Ljava/text/ParseException;
    invoke-virtual {v1}, Ljava/text/ParseException;->printStackTrace()V

    goto :goto_0
.end method

.method private refresh()V
    .locals 7

    .prologue
    .line 196
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/perm/kate/StatsActivity;->showProgressBar(Z)V

    .line 197
    sget-object v0, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    iget-object v1, p0, Lcom/perm/kate/StatsActivity;->group_id:Ljava/lang/Long;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/perm/kate/StatsActivity;->date_from_str_for_api:Ljava/lang/String;

    iget-object v4, p0, Lcom/perm/kate/StatsActivity;->date_to_str_for_api:Ljava/lang/String;

    iget-object v5, p0, Lcom/perm/kate/StatsActivity;->callback:Lcom/perm/kate/session/Callback;

    move-object v6, p0

    invoke-virtual/range {v0 .. v6}, Lcom/perm/kate/session/Session;->getStats(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    .line 198
    return-void
.end method

.method private refreshInThread()V
    .locals 1

    .prologue
    .line 185
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/perm/kate/StatsActivity;->showHideFields(Z)V

    .line 186
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/perm/kate/StatsActivity;->showProgressBar(Z)V

    .line 187
    new-instance v0, Lcom/perm/kate/StatsActivity$3;

    invoke-direct {v0, p0}, Lcom/perm/kate/StatsActivity$3;-><init>(Lcom/perm/kate/StatsActivity;)V

    .line 192
    invoke-virtual {v0}, Lcom/perm/kate/StatsActivity$3;->start()V

    .line 193
    return-void
.end method

.method private showHideFields(Z)V
    .locals 4
    .param p1, "show_data"    # Z

    .prologue
    const/4 v2, 0x0

    const/16 v1, 0x8

    .line 230
    iget-object v3, p0, Lcom/perm/kate/StatsActivity;->tv_loading_data:Landroid/widget/TextView;

    if-eqz p1, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 231
    iget-object v3, p0, Lcom/perm/kate/StatsActivity;->fl_button_bg:Landroid/widget/FrameLayout;

    if-eqz p1, :cond_1

    move v0, v2

    :goto_1
    invoke-virtual {v3, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 232
    iget-object v3, p0, Lcom/perm/kate/StatsActivity;->fl_button_bg2:Landroid/widget/FrameLayout;

    if-eqz p1, :cond_2

    move v0, v2

    :goto_2
    invoke-virtual {v3, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 233
    iget-object v0, p0, Lcom/perm/kate/StatsActivity;->tv_info:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 234
    iget-object v3, p0, Lcom/perm/kate/StatsActivity;->ll_visitors_views:Landroid/widget/LinearLayout;

    if-eqz p1, :cond_3

    move v0, v2

    :goto_3
    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 235
    iget-object v3, p0, Lcom/perm/kate/StatsActivity;->ll_sex:Landroid/widget/LinearLayout;

    if-eqz p1, :cond_4

    move v0, v2

    :goto_4
    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 236
    iget-object v0, p0, Lcom/perm/kate/StatsActivity;->ll_age:Landroid/widget/LinearLayout;

    if-eqz p1, :cond_5

    :goto_5
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 237
    return-void

    :cond_0
    move v0, v2

    .line 230
    goto :goto_0

    :cond_1
    move v0, v1

    .line 231
    goto :goto_1

    :cond_2
    move v0, v1

    .line 232
    goto :goto_2

    :cond_3
    move v0, v1

    .line 234
    goto :goto_3

    :cond_4
    move v0, v1

    .line 235
    goto :goto_4

    :cond_5
    move v2, v1

    .line 236
    goto :goto_5
.end method

.method private updateApiDateStrings()V
    .locals 2

    .prologue
    .line 175
    iget-object v0, p0, Lcom/perm/kate/StatsActivity;->api_df:Ljava/text/SimpleDateFormat;

    iget-object v1, p0, Lcom/perm/kate/StatsActivity;->date_from:Ljava/util/Date;

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/perm/kate/StatsActivity;->date_from_str_for_api:Ljava/lang/String;

    .line 176
    iget-object v0, p0, Lcom/perm/kate/StatsActivity;->api_df:Ljava/text/SimpleDateFormat;

    iget-object v1, p0, Lcom/perm/kate/StatsActivity;->date_to:Ljava/util/Date;

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/perm/kate/StatsActivity;->date_to_str_for_api:Ljava/lang/String;

    .line 177
    return-void
.end method

.method private updateButtonsLabels()V
    .locals 4

    .prologue
    .line 140
    iget-object v0, p0, Lcom/perm/kate/StatsActivity;->btn_date_from:Landroid/widget/Button;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const v2, 0x7f0701ac

    invoke-virtual {p0, v2}, Lcom/perm/kate/StatsActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/perm/kate/StatsActivity;->display_df:Ljava/text/SimpleDateFormat;

    iget-object v3, p0, Lcom/perm/kate/StatsActivity;->date_from:Ljava/util/Date;

    invoke-virtual {v2, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 141
    iget-object v0, p0, Lcom/perm/kate/StatsActivity;->btn_date_to:Landroid/widget/Button;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const v2, 0x7f07028b

    invoke-virtual {p0, v2}, Lcom/perm/kate/StatsActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/perm/kate/StatsActivity;->display_df:Ljava/text/SimpleDateFormat;

    iget-object v3, p0, Lcom/perm/kate/StatsActivity;->date_to:Ljava/util/Date;

    invoke-virtual {v2, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 142
    return-void
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 551
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 552
    invoke-direct {p0}, Lcom/perm/kate/StatsActivity;->onOrientationChanged()V

    .line 556
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Lcom/perm/kate/BaseActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 557
    return-void

    .line 553
    :cond_1
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 554
    invoke-direct {p0}, Lcom/perm/kate/StatsActivity;->onOrientationChanged()V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 66
    invoke-super {p0, p1}, Lcom/perm/kate/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 67
    const v0, 0x7f0300fe

    invoke-virtual {p0, v0}, Lcom/perm/kate/StatsActivity;->setContentView(I)V

    .line 68
    const v0, 0x7f070461

    invoke-virtual {p0, v0}, Lcom/perm/kate/StatsActivity;->setHeaderTitle(I)V

    .line 69
    invoke-virtual {p0}, Lcom/perm/kate/StatsActivity;->setupRefreshButton()V

    .line 70
    invoke-virtual {p0}, Lcom/perm/kate/StatsActivity;->setButtonsBg()V

    .line 71
    invoke-virtual {p0}, Lcom/perm/kate/StatsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "com.perm.kate.group_id"

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/perm/kate/StatsActivity;->group_id:Ljava/lang/Long;

    .line 72
    const v0, 0x7f0e0068

    invoke-virtual {p0, v0}, Lcom/perm/kate/StatsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/perm/kate/StatsActivity;->fl_button_bg:Landroid/widget/FrameLayout;

    .line 73
    const v0, 0x7f0e00a3

    invoke-virtual {p0, v0}, Lcom/perm/kate/StatsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/perm/kate/StatsActivity;->fl_button_bg2:Landroid/widget/FrameLayout;

    .line 74
    const v0, 0x7f0e032b

    invoke-virtual {p0, v0}, Lcom/perm/kate/StatsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/perm/kate/StatsActivity;->btn_date_from:Landroid/widget/Button;

    .line 75
    iget-object v0, p0, Lcom/perm/kate/StatsActivity;->btn_date_from:Landroid/widget/Button;

    iget-object v1, p0, Lcom/perm/kate/StatsActivity;->date_from_OnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 76
    const v0, 0x7f0e032c

    invoke-virtual {p0, v0}, Lcom/perm/kate/StatsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/perm/kate/StatsActivity;->btn_date_to:Landroid/widget/Button;

    .line 77
    iget-object v0, p0, Lcom/perm/kate/StatsActivity;->btn_date_to:Landroid/widget/Button;

    iget-object v1, p0, Lcom/perm/kate/StatsActivity;->date_to_OnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 78
    const v0, 0x7f0e0167

    invoke-virtual {p0, v0}, Lcom/perm/kate/StatsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/perm/kate/StatsActivity;->tv_loading_data:Landroid/widget/TextView;

    .line 79
    const v0, 0x7f0e0321

    invoke-virtual {p0, v0}, Lcom/perm/kate/StatsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/perm/kate/StatsActivity;->tv_info:Landroid/widget/TextView;

    .line 80
    const v0, 0x7f0e032d

    invoke-virtual {p0, v0}, Lcom/perm/kate/StatsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/perm/kate/StatsActivity;->ll_visitors_views:Landroid/widget/LinearLayout;

    .line 81
    const v0, 0x7f0e032f

    invoke-virtual {p0, v0}, Lcom/perm/kate/StatsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/perm/kate/StatsActivity;->ll_sex:Landroid/widget/LinearLayout;

    .line 82
    const v0, 0x7f0e0331

    invoke-virtual {p0, v0}, Lcom/perm/kate/StatsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/perm/kate/StatsActivity;->ll_age:Landroid/widget/LinearLayout;

    .line 83
    const v0, 0x7f0e032e

    invoke-virtual {p0, v0}, Lcom/perm/kate/StatsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/perm/kate/chartview/ChartView;

    iput-object v0, p0, Lcom/perm/kate/StatsActivity;->visitors_views_chart_view:Lcom/perm/kate/chartview/ChartView;

    .line 84
    const v0, 0x7f0e0330

    invoke-virtual {p0, v0}, Lcom/perm/kate/StatsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/perm/kate/chartview/ChartView;

    iput-object v0, p0, Lcom/perm/kate/StatsActivity;->sex_chart_view:Lcom/perm/kate/chartview/ChartView;

    .line 85
    const v0, 0x7f0e0332

    invoke-virtual {p0, v0}, Lcom/perm/kate/StatsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/perm/kate/chartview/ChartView;

    iput-object v0, p0, Lcom/perm/kate/StatsActivity;->age_chart_view:Lcom/perm/kate/chartview/ChartView;

    .line 86
    invoke-direct {p0}, Lcom/perm/kate/StatsActivity;->initFields()V

    .line 87
    invoke-direct {p0}, Lcom/perm/kate/StatsActivity;->initDates()V

    .line 88
    invoke-direct {p0}, Lcom/perm/kate/StatsActivity;->refreshInThread()V

    .line 89
    return-void
.end method

.method protected onRefreshButton()V
    .locals 0

    .prologue
    .line 181
    invoke-direct {p0}, Lcom/perm/kate/StatsActivity;->refreshInThread()V

    .line 182
    return-void
.end method
