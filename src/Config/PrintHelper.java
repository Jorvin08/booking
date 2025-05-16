package Config;


import java.awt.Graphics;
import java.awt.Graphics2D;
import java.awt.print.*;
import javax.swing.JTable;
import javax.swing.table.TableModel;



public abstract class PrintHelper implements Printable {

    private JTable table;
    private int[] selectedRows;

    public PrintHelper(JTable table, int[] selectedRows) {
        this.table = table;
        this.selectedRows = selectedRows;
    }

    public void printTable() {
        PrinterJob job = PrinterJob.getPrinterJob();
        job.setPrintable(this);
        if (job.printDialog()) {
            try {
                job.print();
            } catch (PrinterException ex) {
                ex.printStackTrace();
            }
        }
    }

    @Override
    public int print(Graphics g, PageFormat pf, int pageIndex) throws PrinterException {
        if (pageIndex > 0) {
            return NO_SUCH_PAGE;
        }

        Graphics2D g2d = (Graphics2D) g;
        g2d.translate(pf.getImageableX(), pf.getImageableY());

        TableModel model = table.getModel();
        int y = 20;

        // Print headers
        for (int col = 0; col < model.getColumnCount(); col++) {
            g.drawString(model.getColumnName(col), col * 100, y);
        }

        y += 20;

        // Print selected rows
        for (int row : selectedRows) {
            for (int col = 0; col < model.getColumnCount(); col++) {
                Object value = model.getValueAt(row, col);
                g.drawString(String.valueOf(value), col * 100, y);
            }
            y += 20;
        }

        return PAGE_EXISTS;
    }
}
